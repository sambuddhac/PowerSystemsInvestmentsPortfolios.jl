# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

@doc raw"""ColocatedSupplyStorageTechnology

    ColocatedSupplyStorageTechnology(;
        name=nothing,
        id=nothing,
        power_systems_type=nothing,
        base_year=nothing,
        region=nothing,
        available=nothing,
        balancing_topology=nothing,
        capital_costs_solar=nothing,
        operation_costs_solar=nothing,
        initial_capacity_solar=nothing,
        capacity_limits_solar=nothing,
        lifetime_solar=nothing,
        financial_data_solar=nothing,
        capital_costs_wind=nothing,
        operation_costs_wind=nothing,
        initial_capacity_wind=nothing,
        capacity_limits_wind=nothing,
        lifetime_wind=nothing,
        financial_data_wind=nothing,
        capital_costs_energy=nothing,
        capital_costs_power=nothing,
        operations_costs_energy=nothing,
        operations_costs_power=nothing,
        existing_capacity_power=nothing,
        existing_capacity_energy=nothing,
        capacity_power_limits=nothing,
        capacity_energy_limits=nothing,
        duration_limits=nothing,
        efficiency_storage=nothing,
        losses_storage=1.0,
        lifetime_storage=100,
        financial_data_storage=nothing,
        maximum_inverter_capacity=nothing,
        minimum_inverter_capacity=nothing,
        capital_costs_inverter=nothing,
        operation_costs_inverter=nothing,
        inverter_efficiency=nothing,
        inverter_supply_ratio=nothing,
    )

    - name::String
    - id::Int64
    - power_systems_type::String
    - base_year::Int64
    - region::Vector{Int64}
    - available::Bool
    - balancing_topology::String
    - capital_costs_solar::ValueCurve
    - operation_costs_solar::RenewableGenerationCost
    - initial_capacity_solar::Float64
    - capacity_limits_solar::MinMax
    - lifetime_solar::Int64
    - financial_data_solar::Any
    - capital_costs_wind::ValueCurve
    - operation_costs_wind::RenewableGenerationCost
    - initial_capacity_wind::Float64
    - capacity_limits_wind::MinMax
    - lifetime_wind::Int64
    - financial_data_wind::Any
    - capital_costs_energy::ValueCurve
    - capital_costs_power::ValueCurve
    - operations_costs_energy::StorageCost
    - operations_costs_power::StorageCost
    - existing_capacity_power::Float64
    - existing_capacity_energy::Float64
    - capacity_power_limits::MinMax
    - capacity_energy_limits::MinMax
    - duration_limits::MinMax
    - efficiency_storage::InOut
    - losses_storage::Float64
    - lifetime_storage::Int64
    - financial_data_storage::Any
    - maximum_inverter_capacity::Float64
    - minimum_inverter_capacity::Float64
    - capital_costs_inverter::ValueCurve
    - operation_costs_inverter::ProductionVariableCostCurve
    - inverter_efficiency::Float64
    - inverter_supply_ratio::Float64
"""
Base.@kwdef mutable struct ColocatedSupplyStorageTechnology <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    id::Union{Nothing, Int64} = nothing
    power_systems_type::Union{Nothing, String} = nothing
    base_year::Union{Nothing, Int64} = nothing
    region::Union{Nothing, Vector{Int64}} = nothing
    available::Union{Nothing, Bool} = nothing
    balancing_topology::Union{Nothing, String} = nothing
    capital_costs_solar = nothing # spec type: Union{ Nothing, ValueCurve }
    operation_costs_solar = nothing # spec type: Union{ Nothing, RenewableGenerationCost }
    initial_capacity_solar::Union{Nothing, Float64} = nothing
    capacity_limits_solar = nothing # spec type: Union{ Nothing, MinMax }
    lifetime_solar::Union{Nothing, Int64} = nothing
    financial_data_solar::Union{Nothing, Any} = nothing
    capital_costs_wind = nothing # spec type: Union{ Nothing, ValueCurve }
    operation_costs_wind = nothing # spec type: Union{ Nothing, RenewableGenerationCost }
    initial_capacity_wind::Union{Nothing, Float64} = nothing
    capacity_limits_wind = nothing # spec type: Union{ Nothing, MinMax }
    lifetime_wind::Union{Nothing, Int64} = nothing
    financial_data_wind::Union{Nothing, Any} = nothing
    capital_costs_energy = nothing # spec type: Union{ Nothing, ValueCurve }
    capital_costs_power = nothing # spec type: Union{ Nothing, ValueCurve }
    operations_costs_energy = nothing # spec type: Union{ Nothing, StorageCost }
    operations_costs_power = nothing # spec type: Union{ Nothing, StorageCost }
    existing_capacity_power::Union{Nothing, Float64} = nothing
    existing_capacity_energy::Union{Nothing, Float64} = nothing
    capacity_power_limits = nothing # spec type: Union{ Nothing, MinMax }
    capacity_energy_limits = nothing # spec type: Union{ Nothing, MinMax }
    duration_limits = nothing # spec type: Union{ Nothing, MinMax }
    efficiency_storage = nothing # spec type: Union{ Nothing, InOut }
    losses_storage::Union{Nothing, Float64} = 1.0
    lifetime_storage::Union{Nothing, Int64} = 100
    financial_data_storage::Union{Nothing, Any} = nothing
    maximum_inverter_capacity::Union{Nothing, Float64} = nothing
    minimum_inverter_capacity::Union{Nothing, Float64} = nothing
    capital_costs_inverter = nothing # spec type: Union{ Nothing, ValueCurve }
    operation_costs_inverter = nothing # spec type: Union{ Nothing, ProductionVariableCostCurve }
    inverter_efficiency::Union{Nothing, Float64} = nothing
    inverter_supply_ratio::Union{Nothing, Float64} = nothing

    function ColocatedSupplyStorageTechnology(
        name,
        id,
        power_systems_type,
        base_year,
        region,
        available,
        balancing_topology,
        capital_costs_solar,
        operation_costs_solar,
        initial_capacity_solar,
        capacity_limits_solar,
        lifetime_solar,
        financial_data_solar,
        capital_costs_wind,
        operation_costs_wind,
        initial_capacity_wind,
        capacity_limits_wind,
        lifetime_wind,
        financial_data_wind,
        capital_costs_energy,
        capital_costs_power,
        operations_costs_energy,
        operations_costs_power,
        existing_capacity_power,
        existing_capacity_energy,
        capacity_power_limits,
        capacity_energy_limits,
        duration_limits,
        efficiency_storage,
        losses_storage,
        lifetime_storage,
        financial_data_storage,
        maximum_inverter_capacity,
        minimum_inverter_capacity,
        capital_costs_inverter,
        operation_costs_inverter,
        inverter_efficiency,
        inverter_supply_ratio,
    )
        OpenAPI.validate_property(ColocatedSupplyStorageTechnology, Symbol("name"), name)
        OpenAPI.validate_property(ColocatedSupplyStorageTechnology, Symbol("id"), id)
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("power_systems_type"),
            power_systems_type,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("base_year"),
            base_year,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("region"),
            region,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("available"),
            available,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("balancing_topology"),
            balancing_topology,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("capital_costs_solar"),
            capital_costs_solar,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("operation_costs_solar"),
            operation_costs_solar,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("initial_capacity_solar"),
            initial_capacity_solar,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("capacity_limits_solar"),
            capacity_limits_solar,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("lifetime_solar"),
            lifetime_solar,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("financial_data_solar"),
            financial_data_solar,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("capital_costs_wind"),
            capital_costs_wind,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("operation_costs_wind"),
            operation_costs_wind,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("initial_capacity_wind"),
            initial_capacity_wind,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("capacity_limits_wind"),
            capacity_limits_wind,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("lifetime_wind"),
            lifetime_wind,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("financial_data_wind"),
            financial_data_wind,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("capital_costs_energy"),
            capital_costs_energy,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("capital_costs_power"),
            capital_costs_power,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("operations_costs_energy"),
            operations_costs_energy,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("operations_costs_power"),
            operations_costs_power,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("existing_capacity_power"),
            existing_capacity_power,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("existing_capacity_energy"),
            existing_capacity_energy,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("capacity_power_limits"),
            capacity_power_limits,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("capacity_energy_limits"),
            capacity_energy_limits,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("duration_limits"),
            duration_limits,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("efficiency_storage"),
            efficiency_storage,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("losses_storage"),
            losses_storage,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("lifetime_storage"),
            lifetime_storage,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("financial_data_storage"),
            financial_data_storage,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("maximum_inverter_capacity"),
            maximum_inverter_capacity,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("minimum_inverter_capacity"),
            minimum_inverter_capacity,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("capital_costs_inverter"),
            capital_costs_inverter,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("operation_costs_inverter"),
            operation_costs_inverter,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("inverter_efficiency"),
            inverter_efficiency,
        )
        OpenAPI.validate_property(
            ColocatedSupplyStorageTechnology,
            Symbol("inverter_supply_ratio"),
            inverter_supply_ratio,
        )
        return new(
            name,
            id,
            power_systems_type,
            base_year,
            region,
            available,
            balancing_topology,
            capital_costs_solar,
            operation_costs_solar,
            initial_capacity_solar,
            capacity_limits_solar,
            lifetime_solar,
            financial_data_solar,
            capital_costs_wind,
            operation_costs_wind,
            initial_capacity_wind,
            capacity_limits_wind,
            lifetime_wind,
            financial_data_wind,
            capital_costs_energy,
            capital_costs_power,
            operations_costs_energy,
            operations_costs_power,
            existing_capacity_power,
            existing_capacity_energy,
            capacity_power_limits,
            capacity_energy_limits,
            duration_limits,
            efficiency_storage,
            losses_storage,
            lifetime_storage,
            financial_data_storage,
            maximum_inverter_capacity,
            minimum_inverter_capacity,
            capital_costs_inverter,
            operation_costs_inverter,
            inverter_efficiency,
            inverter_supply_ratio,
        )
    end
end # type ColocatedSupplyStorageTechnology

const _property_types_ColocatedSupplyStorageTechnology = Dict{Symbol, String}(
    Symbol("name") => "String",
    Symbol("id") => "Int64",
    Symbol("power_systems_type") => "String",
    Symbol("base_year") => "Int64",
    Symbol("region") => "Vector{Int64}",
    Symbol("available") => "Bool",
    Symbol("balancing_topology") => "String",
    Symbol("capital_costs_solar") => "ValueCurve",
    Symbol("operation_costs_solar") => "RenewableGenerationCost",
    Symbol("initial_capacity_solar") => "Float64",
    Symbol("capacity_limits_solar") => "MinMax",
    Symbol("lifetime_solar") => "Int64",
    Symbol("financial_data_solar") => "Any",
    Symbol("capital_costs_wind") => "ValueCurve",
    Symbol("operation_costs_wind") => "RenewableGenerationCost",
    Symbol("initial_capacity_wind") => "Float64",
    Symbol("capacity_limits_wind") => "MinMax",
    Symbol("lifetime_wind") => "Int64",
    Symbol("financial_data_wind") => "Any",
    Symbol("capital_costs_energy") => "ValueCurve",
    Symbol("capital_costs_power") => "ValueCurve",
    Symbol("operations_costs_energy") => "StorageCost",
    Symbol("operations_costs_power") => "StorageCost",
    Symbol("existing_capacity_power") => "Float64",
    Symbol("existing_capacity_energy") => "Float64",
    Symbol("capacity_power_limits") => "MinMax",
    Symbol("capacity_energy_limits") => "MinMax",
    Symbol("duration_limits") => "MinMax",
    Symbol("efficiency_storage") => "InOut",
    Symbol("losses_storage") => "Float64",
    Symbol("lifetime_storage") => "Int64",
    Symbol("financial_data_storage") => "Any",
    Symbol("maximum_inverter_capacity") => "Float64",
    Symbol("minimum_inverter_capacity") => "Float64",
    Symbol("capital_costs_inverter") => "ValueCurve",
    Symbol("operation_costs_inverter") => "ProductionVariableCostCurve",
    Symbol("inverter_efficiency") => "Float64",
    Symbol("inverter_supply_ratio") => "Float64",
)
OpenAPI.property_type(::Type{ColocatedSupplyStorageTechnology}, name::Symbol) = Union{
    Nothing,
    eval(Base.Meta.parse(_property_types_ColocatedSupplyStorageTechnology[name])),
}

function check_required(o::ColocatedSupplyStorageTechnology)
    o.name === nothing && (return false)
    o.power_systems_type === nothing && (return false)
    o.available === nothing && (return false)
    true
end

function OpenAPI.validate_property(
    ::Type{ColocatedSupplyStorageTechnology},
    name::Symbol,
    val,
) end
