
#copy scores
scoreboard players operation #predicate energy.data = #energy.network_id energy.data

#spend power
execute as @e[type=#energy:valid_block_entities,tag=energy.send,predicate=energy:v1.1/has_network_id,scores={energy.storage=1..}] run function energy:v1.1/energy/spend_energy_2
