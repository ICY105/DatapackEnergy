
# get stored network data
scoreboard players operation #store.in energy.data = @s energy.network_id_north
function energy:v1.0/storage/retrieve
execute unless data storage energy:network output.transfer_capacity run data modify storage energy:network output.transfer_capacity set value {transfer_capacity:2147483647, available_generator:0, available_battery:0, energy_spent:0}

execute store result score #energy.available energy.data run data get storage energy:network output.available_generator
execute if entity @s[tag=!energy.send] store result score #energy.temp energy.data run data get storage energy:network output.available_battery
execute if entity @s[tag=!energy.send] run scoreboard players operation #energy.available energy.data += #energy.temp energy.data

# check transfer capacity
execute store result score #energy.capacity energy.data run data get storage energy:network output.transfer_capacity
execute store result score #energy.spent energy.data run data get storage energy:network output.energy_spent
scoreboard players operation #energy.capacity energy.data -= #energy.spent energy.data
execute if score #energy.capacity energy.data matches ..-1 run scoreboard players set #energy.capacity energy.data 0
execute if score #energy.available energy.data > #energy.capacity energy.data run scoreboard players operation #energy.available energy.data = #energy.capacity energy.data

# calculate transfer
scoreboard players operation #energy.needed energy.data = @s energy.max_storage
scoreboard players operation #energy.needed energy.data -= @s energy.storage
execute if score #energy.needed energy.data > #energy.available energy.data run scoreboard players operation #energy.needed energy.data = #energy.available energy.data
execute if score #energy.needed energy.data > @s energy.transfer_rate run scoreboard players operation #energy.needed energy.data = @s energy.transfer_rate

# store transfer
execute if score #energy.needed energy.data matches 1.. run scoreboard players operation #energy.spent energy.data += #energy.needed energy.data
execute if score #energy.needed energy.data matches 1.. run scoreboard players operation @s energy.storage += #energy.needed energy.data
data modify storage energy:network input set from storage energy:network output
execute store result storage energy:network input.energy_spent int 1 run scoreboard players get #energy.spent energy.data
scoreboard players operation #store.in energy.data = @s energy.network_id_north
function energy:v1.0/storage/store
