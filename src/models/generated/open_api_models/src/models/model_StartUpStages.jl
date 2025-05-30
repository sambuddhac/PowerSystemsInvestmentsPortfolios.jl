# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

@doc raw"""StartUpStages

    StartUpStages(;
        cold=nothing,
        hot=nothing,
        warm=nothing,
    )

    - cold::Float64
    - hot::Float64
    - warm::Float64
"""
Base.@kwdef mutable struct StartUpStages <: OpenAPI.APIModel
    cold::Union{Nothing, Float64} = nothing
    hot::Union{Nothing, Float64} = nothing
    warm::Union{Nothing, Float64} = nothing

    function StartUpStages(cold, hot, warm)
        OpenAPI.validate_property(StartUpStages, Symbol("cold"), cold)
        OpenAPI.validate_property(StartUpStages, Symbol("hot"), hot)
        OpenAPI.validate_property(StartUpStages, Symbol("warm"), warm)
        return new(cold, hot, warm)
    end
end # type StartUpStages

const _property_types_StartUpStages = Dict{Symbol, String}(
    Symbol("cold") => "Float64",
    Symbol("hot") => "Float64",
    Symbol("warm") => "Float64",
)
OpenAPI.property_type(::Type{StartUpStages}, name::Symbol) =
    Union{Nothing, eval(Base.Meta.parse(_property_types_StartUpStages[name]))}

function check_required(o::StartUpStages)
    o.cold === nothing && (return false)
    o.hot === nothing && (return false)
    o.warm === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{StartUpStages}, name::Symbol, val) end
