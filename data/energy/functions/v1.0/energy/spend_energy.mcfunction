
# power machine if available
execute unless score @s energy.network_id_up matches 0 run function energy:v1.0/energy/spend_energy_up
execute unless score @s energy.network_id_down matches 0 run function energy:v1.0/energy/spend_energy_down
execute unless score @s energy.network_id_north matches 0 run function energy:v1.0/energy/spend_energy_north
execute unless score @s energy.network_id_south matches 0 run function energy:v1.0/energy/spend_energy_south
execute unless score @s energy.network_id_east matches 0 run function energy:v1.0/energy/spend_energy_east
execute unless score @s energy.network_id_west matches 0 run function energy:v1.0/energy/spend_energy_west
