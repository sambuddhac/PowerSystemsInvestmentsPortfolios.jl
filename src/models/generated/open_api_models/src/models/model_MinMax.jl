# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""MinMax

    MinMax(;
        max=nothing,
        min=nothing,
    )

    - max::Float64
    - min::Float64
"""
Base.@kwdef mutable struct MinMax <: OpenAPI.APIModel
    max::Union{Nothing, Float64} = nothing
    min::Union{Nothing, Float64} = nothing

    function MinMax(max, min, )
        OpenAPI.validate_property(MinMax, Symbol("max"), max)
        OpenAPI.validate_property(MinMax, Symbol("min"), min)
        return new(max, min, )
    end
end # type MinMax

const _property_types_MinMax = Dict{Symbol,String}(Symbol("max")=>"Float64", Symbol("min")=>"Float64", )
OpenAPI.property_type(::Type{ MinMax }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_MinMax[name]))}

function check_required(o::MinMax)
    true
end

function OpenAPI.validate_property(::Type{ MinMax }, name::Symbol, val)


end
