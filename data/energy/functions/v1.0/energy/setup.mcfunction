
# get stored network data
scoreboard players operation #store.in energy.data = @s energy.network_id
function energy:v1.0/storage/retrieve
execute unless data storage energy:network output.transfer_capacity run data modify storage energy:network output set value {transfer_capacity:2147483647, available_generator:0, available_battery:0, energy_spent:0}
execute store result score #energy.temp energy.data run data get storage energy:network output.transfer_capacity

#if defined transfer rate < current capacity, assign capacity as rate and cascade to entire network
execute if score @s energy.transfer_rate < #energy.temp energy.data store result storage energy:network output.transfer_capacity int 1 run scoreboard players get @s energy.transfer_rate
execute if score @s energy.transfer_rate < #energy.temp energy.data run data modify storage energy:network input set from storage energy:network output
execute if score @s energy.transfer_rate < #energy.temp energy.data run scoreboard players operation #store.in energy.data = @s energy.network_id
execute if score @s energy.transfer_rate < #energy.temp energy.data run function energy:v1.0/storage/store
