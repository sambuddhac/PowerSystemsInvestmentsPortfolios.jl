# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

@doc raw"""SupplyTechnology_heat_rate_mmbtu_per_mwh

    SupplyTechnologyHeatRateMmbtuPerMwh(; value=nothing)
"""
mutable struct SupplyTechnologyHeatRateMmbtuPerMwh <: OpenAPI.OneOfAPIModel
    value::Any # Union{ Dict{String, ValueCurve}, ValueCurve }
    SupplyTechnologyHeatRateMmbtuPerMwh() = new()
    SupplyTechnologyHeatRateMmbtuPerMwh(value) = new(value)
end # type SupplyTechnologyHeatRateMmbtuPerMwh

function OpenAPI.property_type(
    ::Type{SupplyTechnologyHeatRateMmbtuPerMwh},
    name::Symbol,
    json::Dict{String, Any},
)

    # no discriminator specified, can't determine the exact type
    return fieldtype(SupplyTechnologyHeatRateMmbtuPerMwh, name)
end
