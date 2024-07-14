
# run approrate function for given slot
execute if score #player.slot energy.data matches -106 run function energy:v1.8/player/m.modify_energy_update_offhand with storage energy:temp list[0]
execute if score #player.slot energy.data matches 100..103 run function energy:v1.8/player/m.modify_energy_update_armor with storage energy:temp list[0]
execute if score #player.slot energy.data matches 0..8 run function energy:v1.8/player/m.modify_energy_update_hotbar with storage energy:temp list[0]

# slot - 9 to normalize for inventory.X slot
scoreboard players remove #player.slot energy.data 9
execute store result storage energy:temp list[0].Slot int 1 run scoreboard players get #player.slot energy.data

# run for inventory if applicable
execute if score #player.slot energy.data matches 0..26 run function energy:v1.8/player/m.modify_energy_update_inventory with storage energy:temp list[0]
