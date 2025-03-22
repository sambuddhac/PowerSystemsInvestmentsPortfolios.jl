#=
This file is auto-generated. Do not edit.
=#

#! format: off

"""
    mutable struct CapacityReserveMargin <: Requirement
        name::String
        target_year::Int64
        internal::InfrastructureSystemsInternal
        ext::Dict
        capacity_reserve_fraction::Float64
        available::Bool
        regions::Vector{Region}
    end

Policy requirement to enforce a minimum capacity reserve margin, such that (total_capacity - peak_demand)/peak_demand >= capacity_reserve_fraction

# Arguments
- `name::String`: The requirement name
- `target_year::Int64`: (default: `2050`) Year in which carbon cap will be applied
- `internal::InfrastructureSystemsInternal`: (default: `InfrastructureSystemsInternal()`) Internal field
- `ext::Dict`: (default: `Dict()`) Option for providing additional data
- `capacity_reserve_fraction::Float64`: (default: `0.0`) Capacity reserve requirements, represented as a fraction of peak demand in region
- `available::Bool`: Availability
- `regions::Vector{Region}`: (default: `Vector{Technology}()`) List of regions where this reserve margin is enforced
"""
mutable struct CapacityReserveMargin <: Requirement
    "The requirement name"
    name::String
    "Year in which carbon cap will be applied"
    target_year::Int64
    "Internal field"
    internal::InfrastructureSystemsInternal
    "Option for providing additional data"
    ext::Dict
    "Capacity reserve requirements, represented as a fraction of peak demand in region"
    capacity_reserve_fraction::Float64
    "Availability"
    available::Bool
    "List of regions where this reserve margin is enforced"
    regions::Vector{Region}
end


function CapacityReserveMargin(; name, target_year=2050, internal=InfrastructureSystemsInternal(), ext=Dict(), capacity_reserve_fraction=0.0, available, regions=Vector{Technology}(), )
    CapacityReserveMargin(name, target_year, internal, ext, capacity_reserve_fraction, available, regions, )
end

"""Get [`CapacityReserveMargin`](@ref) `name`."""
get_name(value::CapacityReserveMargin) = value.name
"""Get [`CapacityReserveMargin`](@ref) `target_year`."""
get_target_year(value::CapacityReserveMargin) = value.target_year
"""Get [`CapacityReserveMargin`](@ref) `internal`."""
get_internal(value::CapacityReserveMargin) = value.internal
"""Get [`CapacityReserveMargin`](@ref) `ext`."""
get_ext(value::CapacityReserveMargin) = value.ext
"""Get [`CapacityReserveMargin`](@ref) `capacity_reserve_fraction`."""
get_capacity_reserve_fraction(value::CapacityReserveMargin) = value.capacity_reserve_fraction
"""Get [`CapacityReserveMargin`](@ref) `available`."""
get_available(value::CapacityReserveMargin) = value.available
"""Get [`CapacityReserveMargin`](@ref) `regions`."""
get_regions(value::CapacityReserveMargin) = value.regions

"""Set [`CapacityReserveMargin`](@ref) `name`."""
set_name!(value::CapacityReserveMargin, val) = value.name = val
"""Set [`CapacityReserveMargin`](@ref) `target_year`."""
set_target_year!(value::CapacityReserveMargin, val) = value.target_year = val
"""Set [`CapacityReserveMargin`](@ref) `internal`."""
set_internal!(value::CapacityReserveMargin, val) = value.internal = val
"""Set [`CapacityReserveMargin`](@ref) `ext`."""
set_ext!(value::CapacityReserveMargin, val) = value.ext = val
"""Set [`CapacityReserveMargin`](@ref) `capacity_reserve_fraction`."""
set_capacity_reserve_fraction!(value::CapacityReserveMargin, val) = value.capacity_reserve_fraction = val
"""Set [`CapacityReserveMargin`](@ref) `available`."""
set_available!(value::CapacityReserveMargin, val) = value.available = val
"""Set [`CapacityReserveMargin`](@ref) `regions`."""
set_regions!(value::CapacityReserveMargin, val) = value.regions = val

function serialize_openapi_struct(technology::CapacityReserveMargin, vals...)
    base_struct = APIServer.CapacityReserveMargin(; vals...)
    return base_struct
end

function deserialize_openapi_struct(::Type{<:CapacityReserveMargin}, vals::Dict)
    return IS.deserialize_struct(APIServer.CapacityReserveMargin, vals)
end
