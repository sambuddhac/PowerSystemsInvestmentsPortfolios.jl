# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

@doc raw"""InOut

    InOut(;
        in=nothing,
        out=nothing,
    )

    - in::Float64
    - out::Float64
"""
Base.@kwdef mutable struct InOut <: OpenAPI.APIModel
    in::Union{Nothing, Float64} = nothing
    out::Union{Nothing, Float64} = nothing

    function InOut(in, out)
        OpenAPI.validate_property(InOut, Symbol("in"), in)
        OpenAPI.validate_property(InOut, Symbol("out"), out)
        return new(in, out)
    end
end # type InOut

const _property_types_InOut =
    Dict{Symbol, String}(Symbol("in") => "Float64", Symbol("out") => "Float64")
OpenAPI.property_type(::Type{InOut}, name::Symbol) =
    Union{Nothing, eval(Base.Meta.parse(_property_types_InOut[name]))}

function check_required(o::InOut)
    true
end

function OpenAPI.validate_property(::Type{InOut}, name::Symbol, val)
end
