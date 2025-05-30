# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

@doc raw"""InputOutputCurve_function_data

    InputOutputCurveFunctionData(; value=nothing)
"""
mutable struct InputOutputCurveFunctionData <: OpenAPI.OneOfAPIModel
    value::Any # Union{ LinearFunctionData, PiecewiseLinearData, QuadraticFunctionData }
    InputOutputCurveFunctionData() = new()
    InputOutputCurveFunctionData(value) = new(value)
end # type InputOutputCurveFunctionData

function OpenAPI.property_type(
    ::Type{InputOutputCurveFunctionData},
    name::Symbol,
    json::Dict{String, Any},
)
    discriminator = json["function_type"]
    if discriminator == "LINEAR"
        return eval(Base.Meta.parse("LinearFunctionData"))
    elseif discriminator == "PIECEWISE_LINEAR"
        return eval(Base.Meta.parse("PiecewiseLinearData"))
    elseif discriminator == "QUADRATIC"
        return eval(Base.Meta.parse("QuadraticFunctionData"))
    end
    throw(
        OpenAPI.ValidationException(
            "Invalid discriminator value: $discriminator for InputOutputCurveFunctionData",
        ),
    )
end
