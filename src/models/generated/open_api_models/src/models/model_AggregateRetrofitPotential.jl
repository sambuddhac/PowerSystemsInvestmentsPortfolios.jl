# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

@doc raw"""AggregateRetrofitPotential

    AggregateRetrofitPotential(;
        retirement_potential=0.0,
    )

    - retirement_potential::Float64
"""
Base.@kwdef mutable struct AggregateRetrofitPotential <: OpenAPI.APIModel
    retirement_potential::Union{Nothing, Float64} = 0.0

    function AggregateRetrofitPotential(retirement_potential)
        OpenAPI.validate_property(
            AggregateRetrofitPotential,
            Symbol("retirement_potential"),
            retirement_potential,
        )
        return new(retirement_potential)
    end
end # type AggregateRetrofitPotential

const _property_types_AggregateRetrofitPotential =
    Dict{Symbol, String}(Symbol("retirement_potential") => "Float64")
OpenAPI.property_type(::Type{AggregateRetrofitPotential}, name::Symbol) =
    Union{Nothing, eval(Base.Meta.parse(_property_types_AggregateRetrofitPotential[name]))}

function check_required(o::AggregateRetrofitPotential)
    o.retirement_potential === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{AggregateRetrofitPotential}, name::Symbol, val) end
