# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

@doc raw"""HVDCTransportTechnology

    HVDCTransportTechnology(;
        name=nothing,
        base_year=2020,
        id=nothing,
        available=nothing,
        base_power=nothing,
        power_systems_type=nothing,
        start_region=nothing,
        end_region=nothing,
        existing_line_capacity=nothing,
        capacity_limits=nothing,
        capital_cost=nothing,
        line_loss=nothing,
        unit_size=nothing,
        resistance=0.0,
        voltage=0.0,
        angle_limits=nothing,
        financial_data=nothing,
    )

    - name::String
    - base_year::Int64
    - id::Int64
    - available::Bool
    - base_power::Float64
    - power_systems_type::String
    - start_region::Int64
    - end_region::Int64
    - existing_line_capacity::Float64
    - capacity_limits::MinMax
    - capital_cost::ValueCurve
    - line_loss::Float64
    - unit_size::Float64
    - resistance::Float64
    - voltage::Float64
    - angle_limits::MinMax
    - financial_data::Any
"""
Base.@kwdef mutable struct HVDCTransportTechnology <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    base_year::Union{Nothing, Int64} = 2020
    id::Union{Nothing, Int64} = nothing
    available::Union{Nothing, Bool} = nothing
    base_power::Union{Nothing, Float64} = nothing
    power_systems_type::Union{Nothing, String} = nothing
    start_region::Union{Nothing, Int64} = nothing
    end_region::Union{Nothing, Int64} = nothing
    existing_line_capacity::Union{Nothing, Float64} = nothing
    capacity_limits = nothing # spec type: Union{ Nothing, MinMax }
    capital_cost = nothing # spec type: Union{ Nothing, ValueCurve }
    line_loss::Union{Nothing, Float64} = nothing
    unit_size::Union{Nothing, Float64} = nothing
    resistance::Union{Nothing, Float64} = 0.0
    voltage::Union{Nothing, Float64} = 0.0
    angle_limits = nothing # spec type: Union{ Nothing, MinMax }
    financial_data::Union{Nothing, Any} = nothing

    function HVDCTransportTechnology(
        name,
        base_year,
        id,
        available,
        base_power,
        power_systems_type,
        start_region,
        end_region,
        existing_line_capacity,
        capacity_limits,
        capital_cost,
        line_loss,
        unit_size,
        resistance,
        voltage,
        angle_limits,
        financial_data,
    )
        OpenAPI.validate_property(HVDCTransportTechnology, Symbol("name"), name)
        OpenAPI.validate_property(HVDCTransportTechnology, Symbol("base_year"), base_year)
        OpenAPI.validate_property(HVDCTransportTechnology, Symbol("id"), id)
        OpenAPI.validate_property(HVDCTransportTechnology, Symbol("available"), available)
        OpenAPI.validate_property(HVDCTransportTechnology, Symbol("base_power"), base_power)
        OpenAPI.validate_property(
            HVDCTransportTechnology,
            Symbol("power_systems_type"),
            power_systems_type,
        )
        OpenAPI.validate_property(
            HVDCTransportTechnology,
            Symbol("start_region"),
            start_region,
        )
        OpenAPI.validate_property(HVDCTransportTechnology, Symbol("end_region"), end_region)
        OpenAPI.validate_property(
            HVDCTransportTechnology,
            Symbol("existing_line_capacity"),
            existing_line_capacity,
        )
        OpenAPI.validate_property(
            HVDCTransportTechnology,
            Symbol("capacity_limits"),
            capacity_limits,
        )
        OpenAPI.validate_property(
            HVDCTransportTechnology,
            Symbol("capital_cost"),
            capital_cost,
        )
        OpenAPI.validate_property(HVDCTransportTechnology, Symbol("line_loss"), line_loss)
        OpenAPI.validate_property(HVDCTransportTechnology, Symbol("unit_size"), unit_size)
        OpenAPI.validate_property(HVDCTransportTechnology, Symbol("resistance"), resistance)
        OpenAPI.validate_property(HVDCTransportTechnology, Symbol("voltage"), voltage)
        OpenAPI.validate_property(
            HVDCTransportTechnology,
            Symbol("angle_limits"),
            angle_limits,
        )
        OpenAPI.validate_property(
            HVDCTransportTechnology,
            Symbol("financial_data"),
            financial_data,
        )
        return new(
            name,
            base_year,
            id,
            available,
            base_power,
            power_systems_type,
            start_region,
            end_region,
            existing_line_capacity,
            capacity_limits,
            capital_cost,
            line_loss,
            unit_size,
            resistance,
            voltage,
            angle_limits,
            financial_data,
        )
    end
end # type HVDCTransportTechnology

const _property_types_HVDCTransportTechnology = Dict{Symbol, String}(
    Symbol("name") => "String",
    Symbol("base_year") => "Int64",
    Symbol("id") => "Int64",
    Symbol("available") => "Bool",
    Symbol("base_power") => "Float64",
    Symbol("power_systems_type") => "String",
    Symbol("start_region") => "Int64",
    Symbol("end_region") => "Int64",
    Symbol("existing_line_capacity") => "Float64",
    Symbol("capacity_limits") => "MinMax",
    Symbol("capital_cost") => "ValueCurve",
    Symbol("line_loss") => "Float64",
    Symbol("unit_size") => "Float64",
    Symbol("resistance") => "Float64",
    Symbol("voltage") => "Float64",
    Symbol("angle_limits") => "MinMax",
    Symbol("financial_data") => "Any",
)
OpenAPI.property_type(::Type{HVDCTransportTechnology}, name::Symbol) =
    Union{Nothing, eval(Base.Meta.parse(_property_types_HVDCTransportTechnology[name]))}

function check_required(o::HVDCTransportTechnology)
    o.name === nothing && (return false)
    o.id === nothing && (return false)
    o.available === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{HVDCTransportTechnology}, name::Symbol, val) end
