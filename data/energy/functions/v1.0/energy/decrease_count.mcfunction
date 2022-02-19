
# count power available
execute unless score @s energy.network_id_up matches 0 run function energy:v1.0/energy/decrease_count_up
execute unless score @s energy.network_id_down matches 0 run function energy:v1.0/energy/decrease_count_down
execute unless score @s energy.network_id_north matches 0 run function energy:v1.0/energy/decrease_count_north
execute unless score @s energy.network_id_south matches 0 run function energy:v1.0/energy/decrease_count_south
execute unless score @s energy.network_id_east matches 0 run function energy:v1.0/energy/decrease_count_east
execute unless score @s energy.network_id_west matches 0 run function energy:v1.0/energy/decrease_count_west
