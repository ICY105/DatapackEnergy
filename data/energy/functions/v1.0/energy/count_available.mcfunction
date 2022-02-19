
# split power between connected networks
scoreboard players set #energy.temp energy.data 0
execute unless score @s energy.network_id_up matches 0 run scoreboard players add #energy.temp energy.data 1
execute unless score @s energy.network_id_down matches 0 run scoreboard players add #energy.temp energy.data 1
execute unless score @s energy.network_id_north matches 0 run scoreboard players add #energy.temp energy.data 1
execute unless score @s energy.network_id_south matches 0 run scoreboard players add #energy.temp energy.data 1
execute unless score @s energy.network_id_east matches 0 run scoreboard players add #energy.temp energy.data 1
execute unless score @s energy.network_id_west matches 0 run scoreboard players add #energy.temp energy.data 1

# count power available
scoreboard players operation #energy.in energy.data = @s energy.storage
scoreboard players operation #energy.in energy.data /= #energy.temp energy.data
execute unless score @s energy.network_id_up matches 0 run function energy:v1.0/energy/count_available_up
execute unless score @s energy.network_id_down matches 0 run function energy:v1.0/energy/count_available_down
execute unless score @s energy.network_id_north matches 0 run function energy:v1.0/energy/count_available_north
execute unless score @s energy.network_id_south matches 0 run function energy:v1.0/energy/count_available_south
execute unless score @s energy.network_id_east matches 0 run function energy:v1.0/energy/count_available_east
execute unless score @s energy.network_id_west matches 0 run function energy:v1.0/energy/count_available_west
