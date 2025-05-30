# These will get encoded into each dictionary when a struct is serialized.
const METADATA_KEY = "__metadata__"
const TYPE_KEY = "type"
const MODULE_KEY = "module"
const PARAMETERS_KEY = "parameters"
const CONSTRUCT_WITH_PARAMETERS_KEY = "construct_with_parameters"
const FUNCTION_KEY = "function"
const SYSTEM_KWARGS = Set((
    :internal,
    :runchecks,
    :time_series_directory,
    :time_series_in_memory,
    :time_series_read_only,
    :timeseries_metadata_file,
    :name,
    :description,
))
const ENCODED_FIELDS = Set((
    :duration_limits,
    :capacity_limits,
    :capacity_energy_limits,
    :capacity_power_limits,
    :co2,
    :fuel,
    :prime_mover_type,
    :heat_rate_mmbtu_per_mwh,
    :storage_tech,
    :cofire_level_limits,
    :cofire_start_limits,
    :region,
    :start_region,
    :end_region,
    :efficiency,
))

function IS.serialize(portfolio::T) where {T <: Portfolio}
    data = Dict{String, Any}()
    data["data_format_version"] = DATA_FORMAT_VERSION
    for field in fieldnames(T)
        # Exclude time_series_directory because the portfolio may get deserialized on a
        # different portfolio.
        if field != :time_series_directory
            data[string(field)] = serialize(getfield(portfolio, field))
        end
    end
    return data
end

function IS.deserialize(::Type{Portfolio}, filename::AbstractString; kwargs...)
    raw = open(filename) do io
        JSON3.read(io, Dict)
    end

    if raw["data_format_version"] != DATA_FORMAT_VERSION
        pre_read_conversion!(raw)
    end

    # These file paths are relative to the portfolio file.
    directory = dirname(filename)
    for file_key in ("time_series_storage_file",)
        if haskey(raw["data"], file_key) && !isabspath(raw["data"][file_key])
            raw["data"][file_key] = joinpath(directory, raw["data"][file_key])
        end
    end

    return from_dict(Portfolio, raw; kwargs...)
end

function serialize(technology::Technology)
    api_struct = serialize_openapi_struct(technology)

    struct_type = typeof(technology)
    api_type = typeof(api_struct)

    # Build OpenAPI struct from modeling struct
    for field in fieldnames(api_type)

        #For fields with references to other structs, serialize with
        #the name of that struct
        if field == :region
            regions = getfield(technology, field)
            value = [get_id(r) for r in regions]

        elseif field == :start_region || field == :end_region
            value = get_id(getfield(technology, field))

            #convert enums to strings
        elseif field == :prime_mover_type || field == :storage_tech
            value = string(getfield(technology, field))
        elseif field == :fuel
            value = [string(f) for f in getfield(technology, field)]
        elseif field == :heat_rate_mmbtu_per_mwh
            fuel_params = getfield(technology, field)
            value = Dict{String, ValueCurve}()
            for (k, v) in fuel_params
                value[string(k)] = v
            end
        elseif field == :co2 ||
               field == :cofire_start_limits ||
               field == :cofire_level_limits
            fuel_params = getfield(technology, field)
            value = Dict{String, Float64}()
            for (k, v) in fuel_params
                value[string(k)] = v
            end
        else
            value = getfield(technology, field)
        end

        setfield!(api_struct, field, value)
    end

    data = Dict{String, Any}(
        string(name) => serialize(getproperty(api_struct, name)) for
        name in fieldnames(typeof(api_struct))
    )

    add_serialization_metadata!(data, struct_type)
    if !isempty(struct_type.parameters)
        data[IS.METADATA_KEY][IS.CONSTRUCT_WITH_PARAMETERS_KEY] = true
    end

    return data
end

"""
Add type information to the dictionary that can be used to deserialize the value.
"""
function add_serialization_metadata!(data::Dict, ::Type{T}) where {T}
    data[METADATA_KEY] = Dict{String, Any}(
        TYPE_KEY => string(nameof(T)),
        MODULE_KEY => string(parentmodule(T)),
    )
    if !isempty(T.parameters)
        data[METADATA_KEY][PARAMETERS_KEY] = [string(nameof(x)) for x in T.parameters]
    end

    return
end

"""
Clear any value stored in ext.
"""
clear_ext!(port::Portfolio) = IS.clear_ext!(port.internal)

function from_dict(
    ::Type{Portfolio},
    raw::Dict{String, Any};
    time_series_read_only=false,
    time_series_directory=nothing,
    config_path=PORTFOLIO_STRUCT_DESCRIPTOR_FILE,
    kwargs...,
)
    # Read any field that is defined in Portfolio but optional for the constructors and not
    # already handled here.
    handled = (
        "aggregation",
        "discount_rate",
        "data",
        "base_system",
        "financial_data",
        "investment_schedule",
        "time_series_directory",
        "time_series_container",
        "metadata",
        "internal",
    )
    parsed_kwargs = Dict{Symbol, Any}()
    for field in setdiff(keys(raw), handled)
        parsed_kwargs[Symbol(field)] = raw[field]
    end

    # The user can override the serialized runchecks value by passing a kwarg here.
    if haskey(kwargs, :runchecks)
        parsed_kwargs[:runchecks] = kwargs[:runchecks]
    end

    # Metadata
    metadata = get(raw, "metadata", Dict())
    name = get(metadata, "name", nothing)
    description = get(metadata, "description", nothing)

    #Financial Data
    financial_data = get(raw, "financial_data", Dict())
    base_year = get(financial_data, "base_year", nothing)
    inflation_rate = get(financial_data, "inflation_rate", nothing)
    discount_rate = get(financial_data, "discount_rate", nothing)
    interest_rate = get(financial_data, "interest_rate", nothing)

    internal = IS.deserialize(InfrastructureSystemsInternal, raw["internal"])
    aggregation = PSY.ACBus
    investment_schedule = raw["investment_schedule"]
    data = IS.deserialize(
        IS.SystemData,
        raw["data"];
        time_series_read_only=time_series_read_only,
        time_series_directory=time_series_directory,
        validation_descriptor_file=config_path,
    )
    portfolio = Portfolio(
        aggregation,
        data,
        investment_schedule,
        internal;
        financial_data=PortfolioFinancialData(
            base_year,
            discount_rate,
            inflation_rate,
            interest_rate,
        ),
        name=name,
        description=description,
        parsed_kwargs...,
    )

    if raw["data_format_version"] != DATA_FORMAT_VERSION
        pre_deserialize_conversion!(raw, portfolio)
    end

    ext = get_ext(portfolio)
    ext["deserialization_in_progress"] = true
    try
        deserialize_components!(portfolio, raw["data"])
    finally
        pop!(ext, "deserialization_in_progress")
        isempty(ext) && clear_ext!(portfolio)
    end

    if raw["data_format_version"] != DATA_FORMAT_VERSION
        post_deserialize_conversion!(portfolio, raw)
    end

    return portfolio
end

# Function copied over from IS. This version of the function is modified to not use the internal field  and UUIDs for components,
# since the internal field is not stored in the JSON when serializing with OpenAPI structs
function IS.deserialize(
    ::Type{IS.SystemData},
    raw::Dict;
    time_series_read_only=false,
    time_series_directory=nothing,
    validation_descriptor_file=nothing,
    kwargs...,
)
    if haskey(raw, "time_series_storage_file")
        if !isfile(raw["time_series_storage_file"])
            error("time series file $(raw["time_series_storage_file"]) does not exist")
        end
        # TODO: need to address this limitation
        if IS.strip_module_name(raw["time_series_storage_type"]) ==
           "InMemoryTimeSeriesStorage"
            @info "Deserializing with InMemoryTimeSeriesStorage is currently not supported. Using HDF"
            #hdf5_storage = Hdf5TimeSeriesStorage(raw["time_series_storage_file"], true)
            #time_series_storage = InMemoryTimeSeriesStorage(hdf5_storage)
        end
        time_series_storage = IS.from_file(
            IS.Hdf5TimeSeriesStorage,
            raw["time_series_storage_file"];
            directory=time_series_directory,
            read_only=time_series_read_only,
        )
        time_series_metadata_store = IS.from_h5_file(
            IS.TimeSeriesMetadataStore,
            time_series_storage.file_path,
            time_series_directory,
        )
    else
        time_series_storage = IS.make_time_series_storage(;
            compression=CompressionSettings(;
                enabled=get(raw, "time_series_compression_enabled", false),
            ),
            directory=time_series_directory,
        )
        time_series_metadata_store = nothing
    end

    time_series_manager = IS.TimeSeriesManager(;
        data_store=time_series_storage,
        read_only=time_series_read_only,
        metadata_store=time_series_metadata_store,
    )
    subsystems = Dict(k => Set(Base.UUID.(v)) for (k, v) in raw["subsystems"])
    supplemental_attribute_manager = IS.deserialize(
        IS.SupplementalAttributeManager,
        get(
            raw,
            "supplemental_attribute_manager",
            Dict("attributes" => [], "associations" => []),
        ),
        time_series_manager,
    )
    internal = IS.deserialize(IS.InfrastructureSystemsInternal, raw["internal"])
    validation_descriptors = if isnothing(validation_descriptor_file)
        []
    else
        IS.read_validation_descriptor(validation_descriptor_file)
    end

    sys = IS.SystemData(
        validation_descriptors,
        time_series_manager,
        subsystems,
        supplemental_attribute_manager,
        internal,
    )
    attributes_by_uuid = Dict{Base.UUID, SupplementalAttribute}()
    for attr_dict in values(supplemental_attribute_manager.data)
        for attr in values(attr_dict)
            uuid = IS.get_uuid(attr)
            if haskey(attributes_by_uuid, uuid)
                error("Bug: Found duplicate supplemental attribute UUID: $uuid")
            end
            attributes_by_uuid[uuid] = attr
        end
    end

    # Note: components need to be deserialized by the parent so that they can go through
    # the proper checks.
    return sys
end

function deserialize_components!(portfolio::Portfolio, raw)
    # Convert the array of components into type-specific arrays to allow addition by type.
    # Need to maintain an order here and deserialize regions first so they can
    # be referenced when deserializing technologies
    technologies = OrderedDict{Any, Vector{Dict}}()
    regions = OrderedDict{Any, Vector{Dict}}()
    for component in raw["components"]
        type = IS.get_type_from_serialization_data(component)
        if type <: Region
            components = get(regions, type, nothing)
            if components === nothing
                components = Vector{Dict}()
                regions[type] = components
            end
        else
            components = get(technologies, type, nothing)
            if components === nothing
                components = Vector{Dict}()
                technologies[type] = components
            end
        end
        push!(components, component)
    end
    data = merge(regions, technologies)

    # Add each type to this as we parse.
    parsed_types = Set()

    function is_matching_type(type, types)
        return any(x -> type <: x, types)
    end

    function deserialize_and_add!(;
        skip_types=nothing,
        include_types=nothing,
        post_add_func=nothing,
    )
        for (type, components) in data
            type in parsed_types && continue
            if !isnothing(skip_types) && is_matching_type(type, skip_types)
                continue
            end
            if !isnothing(include_types) && !is_matching_type(type, include_types)
                continue
            end
            for component in components
                handle_deserialization_special_cases!(component, type)
                #TODO: See if component cache is needed
                api_component = deserialize_openapi_struct(type, component)
                model_component =
                    build_model_struct(api_component, portfolio, component["__metadata__"])

                #TODO: skip_validation currently set to true, review the IS validation
                IS.add_component!(portfolio.data, model_component; skip_validation=true)

                if !isnothing(post_add_func)
                    post_add_func(model_component)
                end
            end
            push!(parsed_types, type)
        end
    end

    deserialize_and_add!()
end

function build_model_struct(base_struct, portfolio::Portfolio, metadata::Dict{String, Any})
    vals = Dict{Symbol, Any}()
    struct_type = typeof(base_struct)

    #TODO: Add get_component wrappers for IS functions
    for (name, type) in zip(fieldnames(struct_type), fieldtypes(struct_type))
        if name in ENCODED_FIELDS
            vals[name] = deserialize_custom_types(name, base_struct, portfolio)
        else
            vals[name] = getfield(base_struct, name)
        end
    end
    struct_type_string = metadata["type"]
    struct_type = getproperty(PowerSystemsInvestmentsPortfolios, Symbol(struct_type_string))
    if haskey(metadata, "parameters")
        parameter_string = metadata["parameters"][1]
        #TODO: Generalize this later. Will all future parameterizing be with PSY structs?
        parameter = getproperty(PowerSystems, Symbol(parameter_string))
        model_struct = struct_type{parameter}(; vals...)
    else
        model_struct = struct_type(; vals...)
    end

    return model_struct
end

function IS.deserialize(
    ::Type{T},
    data::Dict,
    component_cache::Dict,
) where {T <: IS.InfrastructureSystemsComponent}
    vals = Dict{Symbol, Any}()
    for (name, type) in zip(fieldnames(T), fieldtypes(T))
        field_name = string(name)
        if haskey(data, field_name)
            val = data[field_name]
        else
            continue
        end
        if val isa Dict && haskey(val, IS.METADATA_KEY)
            vals[name] = deserialize_uuid_handling(
                IS.get_type_from_serialization_metadata(IS.get_serialization_metadata(val)),
                val,
                component_cache,
            )
        else
            vals[name] = deserialize_uuid_handling(type, val, component_cache)
        end
    end

    type = IS.get_type_from_serialization_metadata(data[IS.METADATA_KEY])

    base_struct = deserialize_openapi_struct(type, vals...)

    return base_struct
end

# Handle cases where the data types in the OpenAPI struct do not match the PSIP struct
function deserialize_custom_types(name, base_struct::OpenAPI.APIModel, portfolio::Portfolio)
    if name == :region
        val = collect(
            IS.get_components(
                x -> get_id(x) in getfield(base_struct, name),
                Region,
                portfolio.data,
            ),
        )
    elseif name == :capacity_limits ||
           name == :capacity_power_limits ||
           name == :capacity_energy_limits ||
           name == :duration_limits
        data = getfield(base_struct, name)
        val = (min=data["min"], max=data["max"])
    elseif name == :efficiency
        data = getfield(base_struct, name)
        val = (in=data["in"], out=data["out"])
    elseif name == :start_region || name == :end_region
        val = first(
            IS.get_components(
                x -> get_id(x) in getfield(base_struct, name),
                Region,
                portfolio.data,
            ),
        )
    elseif name == :prime_mover_type
        val = PrimeMovers(getfield(base_struct, name))
    elseif name == :fuel
        val = [ThermalFuels(f) for f in getfield(base_struct, name)]
    elseif name == :co2
        data = getfield(base_struct, name)
        val = Dict{ThermalFuels, Float64}()
        for (k, v) in data
            val[ThermalFuels(k)] = v
        end
    elseif name == :heat_rate_mmbtu_per_mwh
        data = getfield(base_struct, name)
        val = Dict{ThermalFuels, ValueCurve}()
        for (k, v) in data
            val[ThermalFuels(k)] = v
        end
    elseif name == :cofire_level_limits || name == :cofire_start_limits
        data = getfield(base_struct, name)
        val = Dict{ThermalFuels, MinMax}()
        for (k, v) in data
            val[ThermalFuels(k)] = (min=v["min"], max=v["max"])
        end
    elseif name == :storage_tech
        val = StorageTech(getfield(base_struct, name))
    end

    return val
end

"""
Allow types to implement handling of special cases during deserialization.

# Arguments

  - `component::Dict`: The component serialized as a dictionary.
  - `::Type`: The type of the technology.
"""
handle_deserialization_special_cases!(
    component::Dict,
    ::Type{<:InfrastructureSystemsComponent},
) = nothing

function _is_deserialization_in_progress(portfolio::Portfolio)
    ext = get_ext(portfolio)
    return get(ext, "deserialization_in_progress", false)
end

"""
Serializes a portfolio to a JSON file and saves time series to an HDF5 file.

# Arguments

  - `portfolio::Portfolio`: portfolio
  - `filename::AbstractString`: filename to write

# Keyword arguments

  - `user_data::Union{Nothing, Dict} = nothing`: optional metadata to record
  - `pretty::Bool = false`: whether to pretty-print the JSON
  - `force::Bool = false`: whether to overwrite existing files
  - `runchecks::Bool = false`: whether to run portfolio validation checks

Refer to [`check_component`](@ref) for exceptions thrown if `check = true`.
"""
function to_json(
    portfolio::Portfolio,
    filename::AbstractString;
    user_data=nothing,
    pretty=false,
    force=false,
    runchecks=false,
)
    IS.prepare_for_serialization_to_file!(portfolio.data, filename; force=force)
    data = to_json(portfolio; pretty=pretty)
    open(filename, "w") do io
        write(io, data)
    end

    mfile = joinpath(dirname(filename), splitext(basename(filename))[1] * "_metadata.json")
    _serialize_portfolio_metadata_to_file(portfolio, mfile, user_data)
    @info "Serialized Portfolio to $filename"

    return
end

"""
Serializes a InfrastructureSystemsType to a JSON string.
"""
function to_json(obj::T; pretty=false, indent=2) where {T <: InfrastructureSystemsType}
    try
        if pretty
            io = IOBuffer()
            JSON3.pretty(io, serialize(obj), JSON3.AlignmentContext(; indent=indent))
            return take!(io)
        else
            return JSON3.write(serialize(obj))
        end
    catch e
        @error "Failed to serialize $(summary(obj))"
        rethrow(e)
    end
end

function _serialize_portfolio_metadata_to_file(portfolio::Portfolio, filename, user_data)
    name = get_name(portfolio)
    description = get_description(portfolio)
    metadata = OrderedDict(
        "name" => isnothing(name) ? "" : name,
        "description" => isnothing(description) ? "" : description,
        "component_counts" => IS.get_component_counts_by_type(portfolio.data),
        "time_series_counts" => IS.get_time_series_counts_by_type(portfolio.data),
    )
    if !isnothing(user_data)
        metadata["user_data"] = user_data
    end

    open(filename, "w") do io
        JSON3.pretty(io, metadata)
    end

    @info "Serialized Portfolio metadata to $filename"
end

"""
If assign_new_uuids = true, generate new UUIDs for the portfolio and all components.

Warning: time series data is not restored by this method. If that is needed, use the normal
process to construct the portfolio from a serialized JSON file instead, such as with
`Portfolio("portfolio.json")`.
"""
function IS.from_json(
    io::Union{IO, String},
    ::Type{Portfolio};
    runchecks=true,
    assign_new_uuids=false,
    kwargs...,
)
    data = JSON3.read(io, Dict)
    # These objects could be removed in to_json(portfolio). Doing it here will allow us to
    # keep that JSON string fully consistent with time series and potentially use it in the
    # future.
    for component in data["data"]["components"]
        if haskey(component, "time_series_container")
            empty!(component["time_series_container"])
        end
    end

    portfolio = from_dict(Portfolio, data; kwargs...)
    _post_deserialize_handling(
        portfolio;
        runchecks=runchecks,
        assign_new_uuids=assign_new_uuids,
    )
    return portfolio
end

function _post_deserialize_handling(
    portfolio::Portfolio;
    runchecks=true,
    assign_new_uuids=false,
)
    # runchecks && check(portfolio)
    if assign_new_uuids
        IS.assign_new_uuid!(portfolio)
        for component in get_components(Technology, portfolio)
            assign_new_uuid!(portfolio, component)
        end
        for component in
            IS.get_masked_components(IS.InfrastructureSystemsComponent, portfolio.data)
            assign_new_uuid!(portfolio, component)
        end
        # Note: this does not change UUIDs for time series data because they are
        # shared with components.
    end
end
