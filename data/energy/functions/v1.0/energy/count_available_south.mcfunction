
# get stored network data
scoreboard players operation #store.in energy.data = @s energy.network_id_south
function energy:v1.0/storage/retrieve
execute unless data storage energy:network output.transfer_capacity run data modify storage energy:network output.transfer_capacity set value {transfer_capacity:2147483647, available_generator:0, available_battery:0, energy_spent:0}
execute if entity @s[tag=energy.receive] store result score #energy.temp energy.data run data get storage energy:network output.available_battery
execute if entity @s[tag=!energy.receive] store result score #energy.temp energy.data run data get storage energy:network output.available_generator

#if defined transfer rate < current capacity, assign capacity as rate and cascade to entire network
execute if score @s energy.transfer_rate > #energy.in energy.data run scoreboard players operation #energy.temp energy.data += #energy.in energy.data
execute if score @s energy.transfer_rate <= #energy.in energy.data run scoreboard players operation #energy.temp energy.data += @s energy.transfer_rate
data modify storage energy:network input set from storage energy:network output
execute if entity @s[tag=energy.receive] store result storage energy:network input.available_battery int 1 run scoreboard players get #energy.temp energy.data
execute if entity @s[tag=!energy.receive] store result storage energy:network input.available_generator int 1 run scoreboard players get #energy.temp energy.data
scoreboard players operation #store.in energy.data = @s energy.network_id_south
function energy:v1.0/storage/store

