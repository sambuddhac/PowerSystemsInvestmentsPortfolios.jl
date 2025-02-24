# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""MinimumCapacityRequirements

    MinimumCapacityRequirements(;
        name=nothing,
        id=nothing,
        available=nothing,
        power_systems_type=nothing,
        eligible_resources=nothing,
        min_mw=nothing,
        pricecap=nothing,
    )

    - name::String
    - id::Int64
    - available::Bool
    - power_systems_type::String
    - eligible_resources::Vector{Int64}
    - min_mw::Float64
    - pricecap::Float64
"""
Base.@kwdef mutable struct MinimumCapacityRequirements <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    id::Union{Nothing, Int64} = nothing
    available::Union{Nothing, Bool} = nothing
    power_systems_type::Union{Nothing, String} = nothing
    eligible_resources::Union{Nothing, Vector{Int64}} = nothing
    min_mw::Union{Nothing, Float64} = nothing
    pricecap::Union{Nothing, Float64} = nothing

    function MinimumCapacityRequirements(name, id, available, power_systems_type, eligible_resources, min_mw, pricecap, )
        OpenAPI.validate_property(MinimumCapacityRequirements, Symbol("name"), name)
        OpenAPI.validate_property(MinimumCapacityRequirements, Symbol("id"), id)
        OpenAPI.validate_property(MinimumCapacityRequirements, Symbol("available"), available)
        OpenAPI.validate_property(MinimumCapacityRequirements, Symbol("power_systems_type"), power_systems_type)
        OpenAPI.validate_property(MinimumCapacityRequirements, Symbol("eligible_resources"), eligible_resources)
        OpenAPI.validate_property(MinimumCapacityRequirements, Symbol("min_mw"), min_mw)
        OpenAPI.validate_property(MinimumCapacityRequirements, Symbol("pricecap"), pricecap)
        return new(name, id, available, power_systems_type, eligible_resources, min_mw, pricecap, )
    end
end # type MinimumCapacityRequirements

const _property_types_MinimumCapacityRequirements = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("id")=>"Int64", Symbol("available")=>"Bool", Symbol("power_systems_type")=>"String", Symbol("eligible_resources")=>"Vector{Int64}", Symbol("min_mw")=>"Float64", Symbol("pricecap")=>"Float64", )
OpenAPI.property_type(::Type{ MinimumCapacityRequirements }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_MinimumCapacityRequirements[name]))}

function check_required(o::MinimumCapacityRequirements)
    o.name === nothing && (return false)
    o.available === nothing && (return false)
    o.eligible_resources === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ MinimumCapacityRequirements }, name::Symbol, val)







end
