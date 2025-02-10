#=
This file is auto-generated. Do not edit.
=#

#! format: off

"""
    mutable struct CapacityReserveMargin <: Requirements
        name::String
        power_systems_type::String
        internal::InfrastructureSystemsInternal
        ext::Dict
        capacity_reserve_fraction::Float64
        available::Bool
        regions::Vector{Region}
    end



# Arguments
- `name::String`: The technology name
- `power_systems_type::String`: maps to a valid PowerSystems.jl for PCM modeling
- `internal::InfrastructureSystemsInternal`: (default: `InfrastructureSystemsInternal()`) Internal field
- `ext::Dict`: (default: `Dict()`) Option for providing additional data
- `capacity_reserve_fraction::Float64`: (default: `0.0`) Capacity reserve requirements, represented as a fraction of demand in region
- `available::Bool`: Availability
- `regions::Vector{Region}`: (default: `Vector{Technology}()`) List of regions where this reserve margin is enforced
"""
mutable struct CapacityReserveMargin <: Requirements
    "The technology name"
    name::String
    "maps to a valid PowerSystems.jl for PCM modeling"
    power_systems_type::String
    "Internal field"
    internal::InfrastructureSystemsInternal
    "Option for providing additional data"
    ext::Dict
    "Capacity reserve requirements, represented as a fraction of demand in region"
    capacity_reserve_fraction::Float64
    "Availability"
    available::Bool
    "List of regions where this reserve margin is enforced"
    regions::Vector{Region}
end


function CapacityReserveMargin(; name, power_systems_type, internal=InfrastructureSystemsInternal(), ext=Dict(), capacity_reserve_fraction=0.0, available, regions=Vector{Technology}(), )
    CapacityReserveMargin(name, power_systems_type, internal, ext, capacity_reserve_fraction, available, regions, )
end

"""Get [`CapacityReserveMargin`](@ref) `name`."""
get_name(value::CapacityReserveMargin) = value.name
"""Get [`CapacityReserveMargin`](@ref) `power_systems_type`."""
get_power_systems_type(value::CapacityReserveMargin) = value.power_systems_type
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
"""Set [`CapacityReserveMargin`](@ref) `power_systems_type`."""
set_power_systems_type!(value::CapacityReserveMargin, val) = value.power_systems_type = val
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
