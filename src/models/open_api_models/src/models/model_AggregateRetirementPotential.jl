# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""AggregateRetirementPotential

    AggregateRetirementPotential(;
        retrofit_id=0,
        retrofit_potential=0.0,
        retrofit_fraction=nothing,
    )

    - retrofit_id::Int64
    - retrofit_potential::Float64
    - retrofit_fraction::Float64
"""
Base.@kwdef mutable struct AggregateRetirementPotential <: OpenAPI.APIModel
    retrofit_id::Union{Nothing, Int64} = 0
    retrofit_potential::Union{Nothing, Float64} = 0.0
    retrofit_fraction::Union{Nothing, Float64} = nothing

    function AggregateRetirementPotential(retrofit_id, retrofit_potential, retrofit_fraction, )
        OpenAPI.validate_property(AggregateRetirementPotential, Symbol("retrofit_id"), retrofit_id)
        OpenAPI.validate_property(AggregateRetirementPotential, Symbol("retrofit_potential"), retrofit_potential)
        OpenAPI.validate_property(AggregateRetirementPotential, Symbol("retrofit_fraction"), retrofit_fraction)
        return new(retrofit_id, retrofit_potential, retrofit_fraction, )
    end
end # type AggregateRetirementPotential

const _property_types_AggregateRetirementPotential = Dict{Symbol,String}(Symbol("retrofit_id")=>"Int64", Symbol("retrofit_potential")=>"Float64", Symbol("retrofit_fraction")=>"Float64", )
OpenAPI.property_type(::Type{ AggregateRetirementPotential }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_AggregateRetirementPotential[name]))}

function check_required(o::AggregateRetirementPotential)
    o.retrofit_id === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ AggregateRetirementPotential }, name::Symbol, val)



end
