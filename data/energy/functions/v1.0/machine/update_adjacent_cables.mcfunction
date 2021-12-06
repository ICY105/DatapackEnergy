
#update adjacent cables
execute align xyz positioned ~ ~1 ~ as @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.0/cable/update
execute align xyz positioned ~ ~-1 ~ as @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.0/cable/update
execute align xyz positioned ~ ~ ~-1 as @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.0/cable/update
execute align xyz positioned ~ ~ ~1 as @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.0/cable/update
execute align xyz positioned ~1 ~ ~ as @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.0/cable/update
execute align xyz positioned ~-1 ~ ~ as @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.0/cable/update
