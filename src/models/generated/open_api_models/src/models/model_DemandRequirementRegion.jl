# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

@doc raw"""DemandRequirement_region

    DemandRequirementRegion(; value=nothing)
"""
mutable struct DemandRequirementRegion <: OpenAPI.OneOfAPIModel
    value::Any # Union{ Int64, Vector{Int64} }
    DemandRequirementRegion() = new()
    DemandRequirementRegion(value) = new(value)
end # type DemandRequirementRegion

function OpenAPI.property_type(
    ::Type{DemandRequirementRegion},
    name::Symbol,
    json::Dict{String, Any},
)

    # no discriminator specified, can't determine the exact type
    return fieldtype(DemandRequirementRegion, name)
end
