
schedule function energy:v1.0/tick 20t replace

#setup network transfer capacity
data modify storage energy:network store set value {}
execute as @e[type=#energy:valid_block_entities,tag=energy.cable] at @s run function energy:v1.0/energy/setup

#trigger send energy
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..}] at @s run function energy:v1.0/energy/rate_start
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..},tag=energy.send] at @s run function energy:v1.0/energy/count_available
execute as @e[type=#energy:valid_block_entities,tag=energy.receive,tag=!energy.send] at @s run function energy:v1.0/energy/spend_energy
execute as @e[type=#energy:valid_block_entities,tag=energy.receive,tag=energy.send] at @s run function energy:v1.0/energy/spend_energy
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..},tag=energy.send,tag=!energy.receive] at @s run function energy:v1.0/energy/decrease_count
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..},tag=energy.send,tag=energy.receive] at @s run function energy:v1.0/energy/decrease_count
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..}] at @s run function energy:v1.0/energy/rate_end
