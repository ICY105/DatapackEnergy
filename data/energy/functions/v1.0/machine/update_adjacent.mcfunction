
#update adjacent devices
scoreboard players set #machine.direction energy.data 0
scoreboard players set #machine.out energy.data 0
execute align xyz positioned ~ ~1 ~ as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.0/machine/update_adjacent_2
execute unless score #machine.out energy.data matches 0 run scoreboard players operation @s energy.network_id_up = #machine.out energy.data

scoreboard players set #machine.direction energy.data 1
scoreboard players set #machine.out energy.data 0
execute align xyz positioned ~ ~-1 ~ as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.0/machine/update_adjacent_2
execute unless score #machine.out energy.data matches 0 run scoreboard players operation @s energy.network_id_down = #machine.out energy.data

scoreboard players set #machine.direction energy.data 2
scoreboard players set #machine.out energy.data 0
execute align xyz positioned ~ ~ ~-1 as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.0/machine/update_adjacent_2
execute unless score #machine.out energy.data matches 0 run scoreboard players operation @s energy.network_id_south = #machine.out energy.data

scoreboard players set #machine.direction energy.data 3
scoreboard players set #machine.out energy.data 0
execute align xyz positioned ~ ~ ~1 as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.0/machine/update_adjacent_2
execute unless score #machine.out energy.data matches 0 run scoreboard players operation @s energy.network_id_north = #machine.out energy.data

scoreboard players set #machine.direction energy.data 4
scoreboard players set #machine.out energy.data 0
execute align xyz positioned ~1 ~ ~ as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.0/machine/update_adjacent_2
execute unless score #machine.out energy.data matches 0 run scoreboard players operation @s energy.network_id_west = #machine.out energy.data

scoreboard players set #machine.direction energy.data 5
scoreboard players set #machine.out energy.data 0
execute align xyz positioned ~-1 ~ ~ as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.0/machine/update_adjacent_2
execute unless score #machine.out energy.data matches 0 run scoreboard players operation @s energy.network_id_east = #machine.out energy.data
