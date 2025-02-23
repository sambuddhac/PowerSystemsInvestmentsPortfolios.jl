# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SupplyTechnology

    SupplyTechnology(;
        name=nothing,
        power_systems_type=nothing,
        base_year=2020,
        region=nothing,
        id=nothing,
        available=nothing,
        balancing_topology=nothing,
        base_power=nothing,
        prime_mover_type="OT",
        fuel=nothing,
        heat_rate_mmbtu_per_mwh=nothing,
        co2=nothing,
        cofire_start_min=nothing,
        cofire_start_max=nothing,
        cofire_level_min=nothing,
        cofire_level_max=nothing,
        capital_costs=nothing,
        operation_costs=nothing,
        initial_capacity=0.0,
        unit_size=0.0,
        max_capacity=1e8,
        min_capacity=0.0,
        outage_factor=1.0,
        min_generation_percentage=0.0,
        ramp_up_percentage=100.0,
        ramp_dn_percentage=100.0,
        up_time=0.0,
        dn_time=0.0,
        start_cost_per_mw=0.0,
        start_fuel_mmbtu_per_mw=0.0,
        lifetime=100,
        financial_data=nothing,
    )

    - name::String
    - power_systems_type::String
    - base_year::Int64
    - region::SupplyTechnologyRegion
    - id::Int64
    - available::Bool
    - balancing_topology::String
    - base_power::Float64
    - prime_mover_type::String
    - fuel::SupplyTechnologyFuel
    - heat_rate_mmbtu_per_mwh::SupplyTechnologyHeatRateMmbtuPerMwh
    - co2::SupplyTechnologyCo2
    - cofire_start_min::Dict{String, Float64}
    - cofire_start_max::Dict{String, Float64}
    - cofire_level_min::Dict{String, Float64}
    - cofire_level_max::Dict{String, Float64}
    - capital_costs::ValueCurve
    - operation_costs::SupplyTechnologyOperationCosts
    - initial_capacity::Float64
    - unit_size::Float64
    - max_capacity::Float64
    - min_capacity::Float64
    - outage_factor::Float64
    - min_generation_percentage::Float64
    - ramp_up_percentage::Float64
    - ramp_dn_percentage::Float64
    - up_time::Float64
    - dn_time::Float64
    - start_cost_per_mw::Float64
    - start_fuel_mmbtu_per_mw::Float64
    - lifetime::Int64
    - financial_data::String
"""
Base.@kwdef mutable struct SupplyTechnology <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    power_systems_type::Union{Nothing, String} = nothing
    base_year::Union{Nothing, Int64} = 2020
    region = nothing # spec type: Union{ Nothing, SupplyTechnologyRegion }
    id::Union{Nothing, Int64} = nothing
    available::Union{Nothing, Bool} = nothing
    balancing_topology::Union{Nothing, String} = nothing
    base_power::Union{Nothing, Float64} = nothing
    prime_mover_type::Union{Nothing, String} = "OT"
    fuel = nothing # spec type: Union{ Nothing, SupplyTechnologyFuel }
    heat_rate_mmbtu_per_mwh = nothing # spec type: Union{ Nothing, SupplyTechnologyHeatRateMmbtuPerMwh }
    co2 = nothing # spec type: Union{ Nothing, SupplyTechnologyCo2 }
    cofire_start_min::Union{Nothing, Dict{String, Float64}} = nothing
    cofire_start_max::Union{Nothing, Dict{String, Float64}} = nothing
    cofire_level_min::Union{Nothing, Dict{String, Float64}} = nothing
    cofire_level_max::Union{Nothing, Dict{String, Float64}} = nothing
    capital_costs = nothing # spec type: Union{ Nothing, ValueCurve }
    operation_costs = nothing # spec type: Union{ Nothing, SupplyTechnologyOperationCosts }
    initial_capacity::Union{Nothing, Float64} = 0.0
    unit_size::Union{Nothing, Float64} = 0.0
    max_capacity::Union{Nothing, Float64} = 1e8
    min_capacity::Union{Nothing, Float64} = 0.0
    outage_factor::Union{Nothing, Float64} = 1.0
    min_generation_percentage::Union{Nothing, Float64} = 0.0
    ramp_up_percentage::Union{Nothing, Float64} = 100.0
    ramp_dn_percentage::Union{Nothing, Float64} = 100.0
    up_time::Union{Nothing, Float64} = 0.0
    dn_time::Union{Nothing, Float64} = 0.0
    start_cost_per_mw::Union{Nothing, Float64} = 0.0
    start_fuel_mmbtu_per_mw::Union{Nothing, Float64} = 0.0
    lifetime::Union{Nothing, Int64} = 100
    financial_data::Union{Nothing, String} = nothing

    function SupplyTechnology(name, power_systems_type, base_year, region, id, available, balancing_topology, base_power, prime_mover_type, fuel, heat_rate_mmbtu_per_mwh, co2, cofire_start_min, cofire_start_max, cofire_level_min, cofire_level_max, capital_costs, operation_costs, initial_capacity, unit_size, max_capacity, min_capacity, outage_factor, min_generation_percentage, ramp_up_percentage, ramp_dn_percentage, up_time, dn_time, start_cost_per_mw, start_fuel_mmbtu_per_mw, lifetime, financial_data, )
        OpenAPI.validate_property(SupplyTechnology, Symbol("name"), name)
        OpenAPI.validate_property(SupplyTechnology, Symbol("power_systems_type"), power_systems_type)
        OpenAPI.validate_property(SupplyTechnology, Symbol("base_year"), base_year)
        OpenAPI.validate_property(SupplyTechnology, Symbol("region"), region)
        OpenAPI.validate_property(SupplyTechnology, Symbol("id"), id)
        OpenAPI.validate_property(SupplyTechnology, Symbol("available"), available)
        OpenAPI.validate_property(SupplyTechnology, Symbol("balancing_topology"), balancing_topology)
        OpenAPI.validate_property(SupplyTechnology, Symbol("base_power"), base_power)
        OpenAPI.validate_property(SupplyTechnology, Symbol("prime_mover_type"), prime_mover_type)
        OpenAPI.validate_property(SupplyTechnology, Symbol("fuel"), fuel)
        OpenAPI.validate_property(SupplyTechnology, Symbol("heat_rate_mmbtu_per_mwh"), heat_rate_mmbtu_per_mwh)
        OpenAPI.validate_property(SupplyTechnology, Symbol("co2"), co2)
        OpenAPI.validate_property(SupplyTechnology, Symbol("cofire_start_min"), cofire_start_min)
        OpenAPI.validate_property(SupplyTechnology, Symbol("cofire_start_max"), cofire_start_max)
        OpenAPI.validate_property(SupplyTechnology, Symbol("cofire_level_min"), cofire_level_min)
        OpenAPI.validate_property(SupplyTechnology, Symbol("cofire_level_max"), cofire_level_max)
        OpenAPI.validate_property(SupplyTechnology, Symbol("capital_costs"), capital_costs)
        OpenAPI.validate_property(SupplyTechnology, Symbol("operation_costs"), operation_costs)
        OpenAPI.validate_property(SupplyTechnology, Symbol("initial_capacity"), initial_capacity)
        OpenAPI.validate_property(SupplyTechnology, Symbol("unit_size"), unit_size)
        OpenAPI.validate_property(SupplyTechnology, Symbol("max_capacity"), max_capacity)
        OpenAPI.validate_property(SupplyTechnology, Symbol("min_capacity"), min_capacity)
        OpenAPI.validate_property(SupplyTechnology, Symbol("outage_factor"), outage_factor)
        OpenAPI.validate_property(SupplyTechnology, Symbol("min_generation_percentage"), min_generation_percentage)
        OpenAPI.validate_property(SupplyTechnology, Symbol("ramp_up_percentage"), ramp_up_percentage)
        OpenAPI.validate_property(SupplyTechnology, Symbol("ramp_dn_percentage"), ramp_dn_percentage)
        OpenAPI.validate_property(SupplyTechnology, Symbol("up_time"), up_time)
        OpenAPI.validate_property(SupplyTechnology, Symbol("dn_time"), dn_time)
        OpenAPI.validate_property(SupplyTechnology, Symbol("start_cost_per_mw"), start_cost_per_mw)
        OpenAPI.validate_property(SupplyTechnology, Symbol("start_fuel_mmbtu_per_mw"), start_fuel_mmbtu_per_mw)
        OpenAPI.validate_property(SupplyTechnology, Symbol("lifetime"), lifetime)
        OpenAPI.validate_property(SupplyTechnology, Symbol("financial_data"), financial_data)
        return new(name, power_systems_type, base_year, region, id, available, balancing_topology, base_power, prime_mover_type, fuel, heat_rate_mmbtu_per_mwh, co2, cofire_start_min, cofire_start_max, cofire_level_min, cofire_level_max, capital_costs, operation_costs, initial_capacity, unit_size, max_capacity, min_capacity, outage_factor, min_generation_percentage, ramp_up_percentage, ramp_dn_percentage, up_time, dn_time, start_cost_per_mw, start_fuel_mmbtu_per_mw, lifetime, financial_data, )
    end
end # type SupplyTechnology

const _property_types_SupplyTechnology = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("power_systems_type")=>"String", Symbol("base_year")=>"Int64", Symbol("region")=>"SupplyTechnologyRegion", Symbol("id")=>"Int64", Symbol("available")=>"Bool", Symbol("balancing_topology")=>"String", Symbol("base_power")=>"Float64", Symbol("prime_mover_type")=>"String", Symbol("fuel")=>"SupplyTechnologyFuel", Symbol("heat_rate_mmbtu_per_mwh")=>"SupplyTechnologyHeatRateMmbtuPerMwh", Symbol("co2")=>"SupplyTechnologyCo2", Symbol("cofire_start_min")=>"Dict{String, Float64}", Symbol("cofire_start_max")=>"Dict{String, Float64}", Symbol("cofire_level_min")=>"Dict{String, Float64}", Symbol("cofire_level_max")=>"Dict{String, Float64}", Symbol("capital_costs")=>"ValueCurve", Symbol("operation_costs")=>"SupplyTechnologyOperationCosts", Symbol("initial_capacity")=>"Float64", Symbol("unit_size")=>"Float64", Symbol("max_capacity")=>"Float64", Symbol("min_capacity")=>"Float64", Symbol("outage_factor")=>"Float64", Symbol("min_generation_percentage")=>"Float64", Symbol("ramp_up_percentage")=>"Float64", Symbol("ramp_dn_percentage")=>"Float64", Symbol("up_time")=>"Float64", Symbol("dn_time")=>"Float64", Symbol("start_cost_per_mw")=>"Float64", Symbol("start_fuel_mmbtu_per_mw")=>"Float64", Symbol("lifetime")=>"Int64", Symbol("financial_data")=>"String", )
OpenAPI.property_type(::Type{ SupplyTechnology }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SupplyTechnology[name]))}

function check_required(o::SupplyTechnology)
    o.name === nothing && (return false)
    o.power_systems_type === nothing && (return false)
    o.available === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ SupplyTechnology }, name::Symbol, val)









    if name === Symbol("prime_mover_type")
        OpenAPI.validate_param(name, "SupplyTechnology", :enum, val, ["BA", "BT", "CA", "CC", "CE", "CP", "CS", "CT", "ES", "FC", "FW", "GT", "HA", "HB", "HK", "HY", "IC", "PS", "OT", "ST", "PVe", "WT", "WS"])
    end
























end
