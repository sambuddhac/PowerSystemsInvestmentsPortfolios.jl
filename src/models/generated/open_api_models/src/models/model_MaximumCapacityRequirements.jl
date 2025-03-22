# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""MaximumCapacityRequirements

    MaximumCapacityRequirements(;
        name=nothing,
        id=nothing,
        available=nothing,
        target_year=nothing,
        eligible_resources=nothing,
        max_capacity_mw=nothing,
    )

    - name::String
    - id::Int64
    - available::Bool
    - target_year::Int64
    - eligible_resources::Vector{Int64}
    - max_capacity_mw::Float64
"""
Base.@kwdef mutable struct MaximumCapacityRequirements <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    id::Union{Nothing, Int64} = nothing
    available::Union{Nothing, Bool} = nothing
    target_year::Union{Nothing, Int64} = nothing
    eligible_resources::Union{Nothing, Vector{Int64}} = nothing
    max_capacity_mw::Union{Nothing, Float64} = nothing

    function MaximumCapacityRequirements(name, id, available, target_year, eligible_resources, max_capacity_mw, )
        OpenAPI.validate_property(MaximumCapacityRequirements, Symbol("name"), name)
        OpenAPI.validate_property(MaximumCapacityRequirements, Symbol("id"), id)
        OpenAPI.validate_property(MaximumCapacityRequirements, Symbol("available"), available)
        OpenAPI.validate_property(MaximumCapacityRequirements, Symbol("target_year"), target_year)
        OpenAPI.validate_property(MaximumCapacityRequirements, Symbol("eligible_resources"), eligible_resources)
        OpenAPI.validate_property(MaximumCapacityRequirements, Symbol("max_capacity_mw"), max_capacity_mw)
        return new(name, id, available, target_year, eligible_resources, max_capacity_mw, )
    end
end # type MaximumCapacityRequirements

const _property_types_MaximumCapacityRequirements = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("id")=>"Int64", Symbol("available")=>"Bool", Symbol("target_year")=>"Int64", Symbol("eligible_resources")=>"Vector{Int64}", Symbol("max_capacity_mw")=>"Float64", )
OpenAPI.property_type(::Type{ MaximumCapacityRequirements }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_MaximumCapacityRequirements[name]))}

function check_required(o::MaximumCapacityRequirements)
    o.name === nothing && (return false)
    o.available === nothing && (return false)
    o.eligible_resources === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ MaximumCapacityRequirements }, name::Symbol, val)






end
