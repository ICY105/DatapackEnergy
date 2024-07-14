
function energy:v1.8/energy/change_rate
execute if entity @s[scores={energy.storage=1..},tag=energy.send] run function energy:v1.8/energy/add_to_queue
execute if entity @s[tag=energy.processed] at @s run function energy:v1.8/energy/remove_tags
