
#set version if highest
execute if score #energy.major load.status matches ..0 run scoreboard players set #energy.minor load.status 0
execute if score #energy.major load.status matches ..0 run scoreboard players set #energy.major load.status 1
execute if score #energy.major load.status matches 1 if score #energy.minor load.status matches ..-1 run scoreboard players set #energy.minor load.status 0

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
