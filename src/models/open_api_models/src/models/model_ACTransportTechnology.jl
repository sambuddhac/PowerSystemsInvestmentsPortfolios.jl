# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ACTransportTechnology

    ACTransportTechnology(;
        name=nothing,
        base_year=2020,
        id=nothing,
        available=nothing,
        base_power=nothing,
        power_systems_type=nothing,
        start_region=nothing,
        end_region=nothing,
        existing_line_capacity=nothing,
        maximum_new_capacity=nothing,
        capital_cost=nothing,
        line_loss=nothing,
        resistance=0.0,
        voltage=0.0,
        angle_limit=0.0,
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
    - maximum_new_capacity::Float64
    - capital_cost::ValueCurve
    - line_loss::Float64
    - resistance::Float64
    - voltage::Float64
    - angle_limit::Float64
    - financial_data::Any
"""
Base.@kwdef mutable struct ACTransportTechnology <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    base_year::Union{Nothing, Int64} = 2020
    id::Union{Nothing, Int64} = nothing
    available::Union{Nothing, Bool} = nothing
    base_power::Union{Nothing, Float64} = nothing
    power_systems_type::Union{Nothing, String} = nothing
    start_region::Union{Nothing, Int64} = nothing
    end_region::Union{Nothing, Int64} = nothing
    existing_line_capacity::Union{Nothing, Float64} = nothing
    maximum_new_capacity::Union{Nothing, Float64} = nothing
    capital_cost = nothing # spec type: Union{ Nothing, ValueCurve }
    line_loss::Union{Nothing, Float64} = nothing
    resistance::Union{Nothing, Float64} = 0.0
    voltage::Union{Nothing, Float64} = 0.0
    angle_limit::Union{Nothing, Float64} = 0.0
    financial_data::Union{Nothing, Any} = nothing

    function ACTransportTechnology(name, base_year, id, available, base_power, power_systems_type, start_region, end_region, existing_line_capacity, maximum_new_capacity, capital_cost, line_loss, resistance, voltage, angle_limit, financial_data, )
        OpenAPI.validate_property(ACTransportTechnology, Symbol("name"), name)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("base_year"), base_year)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("id"), id)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("available"), available)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("base_power"), base_power)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("power_systems_type"), power_systems_type)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("start_region"), start_region)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("end_region"), end_region)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("existing_line_capacity"), existing_line_capacity)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("maximum_new_capacity"), maximum_new_capacity)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("capital_cost"), capital_cost)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("line_loss"), line_loss)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("resistance"), resistance)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("voltage"), voltage)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("angle_limit"), angle_limit)
        OpenAPI.validate_property(ACTransportTechnology, Symbol("financial_data"), financial_data)
        return new(name, base_year, id, available, base_power, power_systems_type, start_region, end_region, existing_line_capacity, maximum_new_capacity, capital_cost, line_loss, resistance, voltage, angle_limit, financial_data, )
    end
end # type ACTransportTechnology

const _property_types_ACTransportTechnology = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("base_year")=>"Int64", Symbol("id")=>"Int64", Symbol("available")=>"Bool", Symbol("base_power")=>"Float64", Symbol("power_systems_type")=>"String", Symbol("start_region")=>"Int64", Symbol("end_region")=>"Int64", Symbol("existing_line_capacity")=>"Float64", Symbol("maximum_new_capacity")=>"Float64", Symbol("capital_cost")=>"ValueCurve", Symbol("line_loss")=>"Float64", Symbol("resistance")=>"Float64", Symbol("voltage")=>"Float64", Symbol("angle_limit")=>"Float64", Symbol("financial_data")=>"Any", )
OpenAPI.property_type(::Type{ ACTransportTechnology }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ACTransportTechnology[name]))}

function check_required(o::ACTransportTechnology)
    o.name === nothing && (return false)
    o.available === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ ACTransportTechnology }, name::Symbol, val)
















end
