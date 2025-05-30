# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

@doc raw"""CostCurve

    CostCurve(;
        power_units=nothing,
        value_curve=nothing,
        variable_cost_type="COST",
        vom_cost=nothing,
    )

    - power_units::String
    - value_curve::ValueCurve
    - variable_cost_type::String
    - vom_cost::InputOutputCurve
"""
Base.@kwdef mutable struct CostCurve <: OpenAPI.APIModel
    power_units::Union{Nothing, String} = nothing
    value_curve = nothing # spec type: Union{ Nothing, ValueCurve }
    variable_cost_type::Union{Nothing, String} = "COST"
    vom_cost = nothing # spec type: Union{ Nothing, InputOutputCurve }

    function CostCurve(power_units, value_curve, variable_cost_type, vom_cost)
        OpenAPI.validate_property(CostCurve, Symbol("power_units"), power_units)
        OpenAPI.validate_property(CostCurve, Symbol("value_curve"), value_curve)
        OpenAPI.validate_property(
            CostCurve,
            Symbol("variable_cost_type"),
            variable_cost_type,
        )
        OpenAPI.validate_property(CostCurve, Symbol("vom_cost"), vom_cost)
        return new(power_units, value_curve, variable_cost_type, vom_cost)
    end
end # type CostCurve

const _property_types_CostCurve = Dict{Symbol, String}(
    Symbol("power_units") => "String",
    Symbol("value_curve") => "ValueCurve",
    Symbol("variable_cost_type") => "String",
    Symbol("vom_cost") => "InputOutputCurve",
)
OpenAPI.property_type(::Type{CostCurve}, name::Symbol) =
    Union{Nothing, eval(Base.Meta.parse(_property_types_CostCurve[name]))}

function check_required(o::CostCurve)
    o.power_units === nothing && (return false)
    o.value_curve === nothing && (return false)
    o.variable_cost_type === nothing && (return false)
    o.vom_cost === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{CostCurve}, name::Symbol, val)
    if name === Symbol("power_units")
        OpenAPI.validate_param(
            name,
            "CostCurve",
            :enum,
            val,
            ["SYSTEM_BASE", "DEVICE_BASE", "NATURAL_UNITS"],
        )
    end

    if name === Symbol("variable_cost_type")
        OpenAPI.validate_param(name, "CostCurve", :enum, val, ["COST"])
    end
end
