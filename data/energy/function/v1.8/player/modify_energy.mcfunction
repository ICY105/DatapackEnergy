
# #player.in energy.data -> amount of energy to add/remove from the player's inv
# #player.out energy.data <- 0 if failed, 1 if succeeded
# item format: minecraft:custom_data".{energy:{storage:0,max_storage:0}}

# store scores
scoreboard players operation #player.energy energy.data = #player.in energy.data
scoreboard players set #player.out energy.data 0

# copy inv
data modify storage energy:temp list set value []
data modify storage energy:temp list append from entity @s Inventory[{count:1,components:{"minecraft:custom_data":{energy:{}}}}]

# loop over inv
execute if data storage energy:temp list[0] run function energy:v1.8/player/modify_energy_2
execute if score #player.energy energy.data matches 0 run scoreboard players set #player.out energy.data 1
