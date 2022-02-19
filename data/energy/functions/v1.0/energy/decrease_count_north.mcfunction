
# get stored network data
scoreboard players operation #store.in energy.data = @s energy.network_id_north
function energy:v1.0/storage/retrieve
execute unless data storage energy:network output.transfer_capacity run data modify storage energy:network output.transfer_capacity set value {transfer_capacity:2147483647, available_generator:0, available_battery:0, energy_spent:0}
execute store result score #energy.spent energy.data run data get storage energy:network output.energy_spent

#calc decrease
scoreboard players operation #energy.in energy.data = @s energy.storage
execute if score #energy.spent energy.data < @s energy.storage run scoreboard players operation #energy.in energy.data = #energy.spent energy.data

scoreboard players operation #energy.spent energy.data -= #energy.in energy.data
scoreboard players operation @s energy.storage -= #energy.in energy.data

#store
data modify storage energy:network input set from storage energy:network output
execute store result storage energy:network input.energy_spent int 1 run scoreboard players get #energy.spent energy.data
scoreboard players operation #store.in energy.data = @s energy.network_id_north
function energy:v1.0/storage/store

