# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

@doc raw"""TechnologyFinancialData

    TechnologyFinancialData(;
        name=nothing,
        interest_rate=0.0,
        capital_recovery_period=nothing,
        technology_base_year=nothing,
        id=nothing,
    )

    - name::String
    - interest_rate::Float64
    - capital_recovery_period::Int64
    - technology_base_year::Int64
    - id::Int64
"""
Base.@kwdef mutable struct TechnologyFinancialData <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    interest_rate::Union{Nothing, Float64} = 0.0
    capital_recovery_period::Union{Nothing, Int64} = nothing
    technology_base_year::Union{Nothing, Int64} = nothing
    id::Union{Nothing, Int64} = nothing

    function TechnologyFinancialData(
        name,
        interest_rate,
        capital_recovery_period,
        technology_base_year,
        id,
    )
        OpenAPI.validate_property(TechnologyFinancialData, Symbol("name"), name)
        OpenAPI.validate_property(
            TechnologyFinancialData,
            Symbol("interest_rate"),
            interest_rate,
        )
        OpenAPI.validate_property(
            TechnologyFinancialData,
            Symbol("capital_recovery_period"),
            capital_recovery_period,
        )
        OpenAPI.validate_property(
            TechnologyFinancialData,
            Symbol("technology_base_year"),
            technology_base_year,
        )
        OpenAPI.validate_property(TechnologyFinancialData, Symbol("id"), id)
        return new(name, interest_rate, capital_recovery_period, technology_base_year, id)
    end
end # type TechnologyFinancialData

const _property_types_TechnologyFinancialData = Dict{Symbol, String}(
    Symbol("name") => "String",
    Symbol("interest_rate") => "Float64",
    Symbol("capital_recovery_period") => "Int64",
    Symbol("technology_base_year") => "Int64",
    Symbol("id") => "Int64",
)
OpenAPI.property_type(::Type{TechnologyFinancialData}, name::Symbol) =
    Union{Nothing, eval(Base.Meta.parse(_property_types_TechnologyFinancialData[name]))}

function check_required(o::TechnologyFinancialData)
    o.name === nothing && (return false)
    o.capital_recovery_period === nothing && (return false)
    o.technology_base_year === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{TechnologyFinancialData}, name::Symbol, val)
end
