# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

@doc raw"""IncrementalCurve_function_data

    IncrementalCurveFunctionData(; value=nothing)
"""
mutable struct IncrementalCurveFunctionData <: OpenAPI.OneOfAPIModel
    value::Any # Union{ LinearFunctionData, PiecewiseStepData }
    IncrementalCurveFunctionData() = new()
    IncrementalCurveFunctionData(value) = new(value)
end # type IncrementalCurveFunctionData

function OpenAPI.property_type(
    ::Type{IncrementalCurveFunctionData},
    name::Symbol,
    json::Dict{String, Any},
)
    discriminator = json["function_type"]
    if discriminator == "LINEAR"
        return eval(Base.Meta.parse("LinearFunctionData"))
    elseif discriminator == "PIECEWISE_STEP"
        return eval(Base.Meta.parse("PiecewiseStepData"))
    end
    throw(
        OpenAPI.ValidationException(
            "Invalid discriminator value: $discriminator for IncrementalCurveFunctionData",
        ),
    )
end
