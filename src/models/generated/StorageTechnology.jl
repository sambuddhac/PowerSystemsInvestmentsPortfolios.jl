#=
This file is auto-generated. Do not edit.
=#

#! format: off

"""
    mutable struct StorageTechnology{T <: PSY.Storage} <: Technology
        base_power::Float64
        capital_cost_energy::PSY.ValueCurve
        initial_capacity_power::Float64
        prime_mover_type::PrimeMovers
        capital_cost_power::PSY.ValueCurve
        gen_ID::String
        available::Bool
        name::String
        storage_tech::StorageTech
        efficiency_down::Float64
        self_discharge::Float64
        minimum_required_capacity_power::Float64
        minimum_duration::Float64
        efficiency_up::Float64
        power_systems_type::String
        internal::InfrastructureSystemsInternal
        ext::Dict
        balancing_topology::String
        region::String
        maximum_capacity::Float64
        maximum_duration::Float64
        initial_capacity_energy::Float64
        operations_cost_power::PSY.OperationalCost
        maximum_capacity_energy::Float64
        operations_cost_energy::PSY.OperationalCost
        minimum_required_capacity_energy::Float64
    end



# Arguments
- `base_power::Float64`: Base power
- `capital_cost_energy::PSY.ValueCurve`: (default: `0.0`) Capital costs for energy capacity of storage technology
- `initial_capacity_power::Float64`: Pre-existing power capacity for a technology (MW)
- `prime_mover_type::PrimeMovers`: (default: `PrimeMovers.OT`) Prime mover for generator
- `capital_cost_power::PSY.ValueCurve`: (default: `0.0`) Capital costs for investing in a technology.
- `gen_ID::String`: ID for individual generator
- `available::Bool`: identifies whether the technology is available
- `name::String`: The technology name
- `storage_tech::StorageTech`: Storage Technology Type
- `efficiency_down::Float64`: (default: `1.0`) Efficiency of discharging storage
- `self_discharge::Float64`: (default: `1.0`) Efficiency of discharging storage
- `minimum_required_capacity_power::Float64`: (default: `0.0`) Minimum required power capacity for a storage technology
- `minimum_duration::Float64`: (default: `0.0`) Minimum required durection for a storage technology
- `efficiency_up::Float64`: (default: `1.0`) Efficiency of charging storage
- `power_systems_type::String`: maps to a valid PowerSystems.jl for PCM modeling
- `internal::InfrastructureSystemsInternal`: (default: `InfrastructureSystemsInternal()`) Internal field
- `ext::Dict`: (default: `Dict()`) Option for providing additional data
- `balancing_topology::String`: Set of balancing nodes
- `region::String`: (default: `1.0`) Region/zone technology operates in
- `maximum_capacity::Float64`: (default: `Inf`) Maximum allowable installed power capacity for a storage technology
- `maximum_duration::Float64`: (default: `1000.0`) Maximum allowable durection for a storage technology
- `initial_capacity_energy::Float64`: Pre-existing energy capacity for a technology (MWh)
- `operations_cost_power::PSY.OperationalCost`: Fixed O&M costs for a technology
- `maximum_capacity_energy::Float64`: (default: `Inf`) Maximum allowable installed energy capacity for a storage technology
- `operations_cost_energy::PSY.OperationalCost`: Fixed O&M costs for energy capacity of storage technology
- `minimum_required_capacity_energy::Float64`: (default: `0.0`) Minimum required energy capacity for a storage technology
"""
mutable struct StorageTechnology{T <: PSY.Storage} <: Technology
    "Base power"
    base_power::Float64
    "Capital costs for energy capacity of storage technology"
    capital_cost_energy::PSY.ValueCurve
    "Pre-existing power capacity for a technology (MW)"
    initial_capacity_power::Float64
    "Prime mover for generator"
    prime_mover_type::PrimeMovers
    "Capital costs for investing in a technology."
    capital_cost_power::PSY.ValueCurve
    "ID for individual generator"
    gen_ID::String
    "identifies whether the technology is available"
    available::Bool
    "The technology name"
    name::String
    "Storage Technology Type"
    storage_tech::StorageTech
    "Efficiency of discharging storage"
    efficiency_down::Float64
    "Efficiency of discharging storage"
    self_discharge::Float64
    "Minimum required power capacity for a storage technology"
    minimum_required_capacity_power::Float64
    "Minimum required durection for a storage technology"
    minimum_duration::Float64
    "Efficiency of charging storage"
    efficiency_up::Float64
    "maps to a valid PowerSystems.jl for PCM modeling"
    power_systems_type::String
    "Internal field"
    internal::InfrastructureSystemsInternal
    "Option for providing additional data"
    ext::Dict
    "Set of balancing nodes"
    balancing_topology::String
    "Region/zone technology operates in"
    region::String
    "Maximum allowable installed power capacity for a storage technology"
    maximum_capacity::Float64
    "Maximum allowable durection for a storage technology"
    maximum_duration::Float64
    "Pre-existing energy capacity for a technology (MWh)"
    initial_capacity_energy::Float64
    "Fixed O&M costs for a technology"
    operations_cost_power::PSY.OperationalCost
    "Maximum allowable installed energy capacity for a storage technology"
    maximum_capacity_energy::Float64
    "Fixed O&M costs for energy capacity of storage technology"
    operations_cost_energy::PSY.OperationalCost
    "Minimum required energy capacity for a storage technology"
    minimum_required_capacity_energy::Float64
end


function StorageTechnology{T}(; base_power, capital_cost_energy=0.0, initial_capacity_power, prime_mover_type=PrimeMovers.OT, capital_cost_power=0.0, gen_ID, available, name, storage_tech, efficiency_down=1.0, self_discharge=1.0, minimum_required_capacity_power=0.0, minimum_duration=0.0, efficiency_up=1.0, power_systems_type, internal=InfrastructureSystemsInternal(), ext=Dict(), balancing_topology, region=1.0, maximum_capacity=Inf, maximum_duration=1000.0, initial_capacity_energy, operations_cost_power, maximum_capacity_energy=Inf, operations_cost_energy, minimum_required_capacity_energy=0.0, ) where T <: PSY.Storage
    StorageTechnology{T}(base_power, capital_cost_energy, initial_capacity_power, prime_mover_type, capital_cost_power, gen_ID, available, name, storage_tech, efficiency_down, self_discharge, minimum_required_capacity_power, minimum_duration, efficiency_up, power_systems_type, internal, ext, balancing_topology, region, maximum_capacity, maximum_duration, initial_capacity_energy, operations_cost_power, maximum_capacity_energy, operations_cost_energy, minimum_required_capacity_energy, )
end

"""Get [`StorageTechnology`](@ref) `base_power`."""
get_base_power(value::StorageTechnology) = value.base_power
"""Get [`StorageTechnology`](@ref) `capital_cost_energy`."""
get_capital_cost_energy(value::StorageTechnology) = value.capital_cost_energy
"""Get [`StorageTechnology`](@ref) `initial_capacity_power`."""
get_initial_capacity_power(value::StorageTechnology) = value.initial_capacity_power
"""Get [`StorageTechnology`](@ref) `prime_mover_type`."""
get_prime_mover_type(value::StorageTechnology) = value.prime_mover_type
"""Get [`StorageTechnology`](@ref) `capital_cost_power`."""
get_capital_cost_power(value::StorageTechnology) = value.capital_cost_power
"""Get [`StorageTechnology`](@ref) `gen_ID`."""
get_gen_ID(value::StorageTechnology) = value.gen_ID
"""Get [`StorageTechnology`](@ref) `available`."""
get_available(value::StorageTechnology) = value.available
"""Get [`StorageTechnology`](@ref) `name`."""
get_name(value::StorageTechnology) = value.name
"""Get [`StorageTechnology`](@ref) `storage_tech`."""
get_storage_tech(value::StorageTechnology) = value.storage_tech
"""Get [`StorageTechnology`](@ref) `efficiency_down`."""
get_efficiency_down(value::StorageTechnology) = value.efficiency_down
"""Get [`StorageTechnology`](@ref) `self_discharge`."""
get_self_discharge(value::StorageTechnology) = value.self_discharge
"""Get [`StorageTechnology`](@ref) `minimum_required_capacity_power`."""
get_minimum_required_capacity_power(value::StorageTechnology) = value.minimum_required_capacity_power
"""Get [`StorageTechnology`](@ref) `minimum_duration`."""
get_minimum_duration(value::StorageTechnology) = value.minimum_duration
"""Get [`StorageTechnology`](@ref) `efficiency_up`."""
get_efficiency_up(value::StorageTechnology) = value.efficiency_up
"""Get [`StorageTechnology`](@ref) `power_systems_type`."""
get_power_systems_type(value::StorageTechnology) = value.power_systems_type
"""Get [`StorageTechnology`](@ref) `internal`."""
get_internal(value::StorageTechnology) = value.internal
"""Get [`StorageTechnology`](@ref) `ext`."""
get_ext(value::StorageTechnology) = value.ext
"""Get [`StorageTechnology`](@ref) `balancing_topology`."""
get_balancing_topology(value::StorageTechnology) = value.balancing_topology
"""Get [`StorageTechnology`](@ref) `region`."""
get_region(value::StorageTechnology) = value.region
"""Get [`StorageTechnology`](@ref) `maximum_capacity`."""
get_maximum_capacity(value::StorageTechnology) = value.maximum_capacity
"""Get [`StorageTechnology`](@ref) `maximum_duration`."""
get_maximum_duration(value::StorageTechnology) = value.maximum_duration
"""Get [`StorageTechnology`](@ref) `initial_capacity_energy`."""
get_initial_capacity_energy(value::StorageTechnology) = value.initial_capacity_energy
"""Get [`StorageTechnology`](@ref) `operations_cost_power`."""
get_operations_cost_power(value::StorageTechnology) = value.operations_cost_power
"""Get [`StorageTechnology`](@ref) `maximum_capacity_energy`."""
get_maximum_capacity_energy(value::StorageTechnology) = value.maximum_capacity_energy
"""Get [`StorageTechnology`](@ref) `operations_cost_energy`."""
get_operations_cost_energy(value::StorageTechnology) = value.operations_cost_energy
"""Get [`StorageTechnology`](@ref) `minimum_required_capacity_energy`."""
get_minimum_required_capacity_energy(value::StorageTechnology) = value.minimum_required_capacity_energy

"""Set [`StorageTechnology`](@ref) `base_power`."""
set_base_power!(value::StorageTechnology, val) = value.base_power = val
"""Set [`StorageTechnology`](@ref) `capital_cost_energy`."""
set_capital_cost_energy!(value::StorageTechnology, val) = value.capital_cost_energy = val
"""Set [`StorageTechnology`](@ref) `initial_capacity_power`."""
set_initial_capacity_power!(value::StorageTechnology, val) = value.initial_capacity_power = val
"""Set [`StorageTechnology`](@ref) `prime_mover_type`."""
set_prime_mover_type!(value::StorageTechnology, val) = value.prime_mover_type = val
"""Set [`StorageTechnology`](@ref) `capital_cost_power`."""
set_capital_cost_power!(value::StorageTechnology, val) = value.capital_cost_power = val
"""Set [`StorageTechnology`](@ref) `gen_ID`."""
set_gen_ID!(value::StorageTechnology, val) = value.gen_ID = val
"""Set [`StorageTechnology`](@ref) `available`."""
set_available!(value::StorageTechnology, val) = value.available = val
"""Set [`StorageTechnology`](@ref) `name`."""
set_name!(value::StorageTechnology, val) = value.name = val
"""Set [`StorageTechnology`](@ref) `storage_tech`."""
set_storage_tech!(value::StorageTechnology, val) = value.storage_tech = val
"""Set [`StorageTechnology`](@ref) `efficiency_down`."""
set_efficiency_down!(value::StorageTechnology, val) = value.efficiency_down = val
"""Set [`StorageTechnology`](@ref) `self_discharge`."""
set_self_discharge!(value::StorageTechnology, val) = value.self_discharge = val
"""Set [`StorageTechnology`](@ref) `minimum_required_capacity_power`."""
set_minimum_required_capacity_power!(value::StorageTechnology, val) = value.minimum_required_capacity_power = val
"""Set [`StorageTechnology`](@ref) `minimum_duration`."""
set_minimum_duration!(value::StorageTechnology, val) = value.minimum_duration = val
"""Set [`StorageTechnology`](@ref) `efficiency_up`."""
set_efficiency_up!(value::StorageTechnology, val) = value.efficiency_up = val
"""Set [`StorageTechnology`](@ref) `power_systems_type`."""
set_power_systems_type!(value::StorageTechnology, val) = value.power_systems_type = val
"""Set [`StorageTechnology`](@ref) `internal`."""
set_internal!(value::StorageTechnology, val) = value.internal = val
"""Set [`StorageTechnology`](@ref) `ext`."""
set_ext!(value::StorageTechnology, val) = value.ext = val
"""Set [`StorageTechnology`](@ref) `balancing_topology`."""
set_balancing_topology!(value::StorageTechnology, val) = value.balancing_topology = val
"""Set [`StorageTechnology`](@ref) `region`."""
set_region!(value::StorageTechnology, val) = value.region = val
"""Set [`StorageTechnology`](@ref) `maximum_capacity`."""
set_maximum_capacity!(value::StorageTechnology, val) = value.maximum_capacity = val
"""Set [`StorageTechnology`](@ref) `maximum_duration`."""
set_maximum_duration!(value::StorageTechnology, val) = value.maximum_duration = val
"""Set [`StorageTechnology`](@ref) `initial_capacity_energy`."""
set_initial_capacity_energy!(value::StorageTechnology, val) = value.initial_capacity_energy = val
"""Set [`StorageTechnology`](@ref) `operations_cost_power`."""
set_operations_cost_power!(value::StorageTechnology, val) = value.operations_cost_power = val
"""Set [`StorageTechnology`](@ref) `maximum_capacity_energy`."""
set_maximum_capacity_energy!(value::StorageTechnology, val) = value.maximum_capacity_energy = val
"""Set [`StorageTechnology`](@ref) `operations_cost_energy`."""
set_operations_cost_energy!(value::StorageTechnology, val) = value.operations_cost_energy = val
"""Set [`StorageTechnology`](@ref) `minimum_required_capacity_energy`."""
set_minimum_required_capacity_energy!(value::StorageTechnology, val) = value.minimum_required_capacity_energy = val
