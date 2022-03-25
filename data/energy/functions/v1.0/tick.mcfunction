
schedule function energy:v1.0/tick 20t replace

#setup network transfer capacity
scoreboard players reset * energy.transfer_capacity
execute as @e[type=#energy:valid_block_entities,tag=energy.cable] at @s run function energy:v1.0/energy/setup_cables

#trigger send energy
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..}] at @s run function energy:v1.0/energy/rate_start
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=1..},tag=energy.send] at @s run function energy:v1.0/energy/process_networks
execute as @e[type=#energy:valid_block_entities,tag=energy.processed] at @s run function energy:v1.0/energy/remove_tags
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..}] at @s run function energy:v1.0/energy/rate_end
