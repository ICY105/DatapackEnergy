
scoreboard objectives add energy.data dummy
scoreboard objectives add energy.usage_rate dummy
scoreboard objectives add energy.change_rate dummy

scoreboard objectives add energy.storage dummy
scoreboard objectives add energy.max_storage dummy
scoreboard objectives add energy.transfer_rate dummy

scoreboard objectives add energy.transfer_capacity dummy
scoreboard objectives add energy.network_id dummy
scoreboard objectives add energy.network_id_up dummy
scoreboard objectives add energy.network_id_down dummy
scoreboard objectives add energy.network_id_north dummy
scoreboard objectives add energy.network_id_south dummy
scoreboard objectives add energy.network_id_east dummy
scoreboard objectives add energy.network_id_west dummy

#setup storage
data modify storage energy:network input set value {}
data modify storage energy:network output set value {}
data modify storage energy:network store set value {}

#constants
scoreboard players set #cons.-1 energy.data -1
scoreboard players set #cons.16 energy.data 16
scoreboard players set #cons.256 energy.data 256
scoreboard players set #cons.4096 energy.data 4096
scoreboard players set #cons.65536 energy.data 65536
scoreboard players set #cons.1048576 energy.data 1048576
scoreboard players set #cons.16777216 energy.data 16777216
scoreboard players set #cons.268435456 energy.data 268435456

#schedule main
schedule function energy:v1.0/tick 3t replace
