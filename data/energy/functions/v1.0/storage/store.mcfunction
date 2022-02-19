#
# score #store.in energy.data -> key
# storage energy:network input -> value
#

#setup
data modify storage energy:network output set from storage energy:network input
data remove storage energy:network temp

scoreboard players set #store.negitive energy.data 0
execute if score #store.in energy.data matches ..-1 run scoreboard players set #store.negitive energy.data 1
execute if score #store.in energy.data matches ..-1 run scoreboard players operation #store.in energy.data *= #cons.-1 energy.data

#bits 29-32
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
scoreboard players operation #store.in energy.data /= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network temp.0 set from storage energy:network output
execute if score #store.temp energy.data matches 1 run data modify storage energy:network temp.1 set from storage energy:network output
execute if score #store.temp energy.data matches 2 run data modify storage energy:network temp.10 set from storage energy:network output
execute if score #store.temp energy.data matches 3 run data modify storage energy:network temp.11 set from storage energy:network output
execute if score #store.temp energy.data matches 4 run data modify storage energy:network temp.100 set from storage energy:network output
execute if score #store.temp energy.data matches 5 run data modify storage energy:network temp.101 set from storage energy:network output
execute if score #store.temp energy.data matches 6 run data modify storage energy:network temp.110 set from storage energy:network output
execute if score #store.temp energy.data matches 7 run data modify storage energy:network temp.111 set from storage energy:network output
execute if score #store.temp energy.data matches 8 run data modify storage energy:network temp.1000 set from storage energy:network output
execute if score #store.temp energy.data matches 9 run data modify storage energy:network temp.1001 set from storage energy:network output
execute if score #store.temp energy.data matches 10 run data modify storage energy:network temp.1010 set from storage energy:network output
execute if score #store.temp energy.data matches 11 run data modify storage energy:network temp.1011 set from storage energy:network output
execute if score #store.temp energy.data matches 12 run data modify storage energy:network temp.1100 set from storage energy:network output
execute if score #store.temp energy.data matches 13 run data modify storage energy:network temp.1101 set from storage energy:network output
execute if score #store.temp energy.data matches 14 run data modify storage energy:network temp.1110 set from storage energy:network output
execute if score #store.temp energy.data matches 15 run data modify storage energy:network temp.1111 set from storage energy:network output
data modify storage energy:network output set from storage energy:network temp
data remove storage energy:network temp

#bits 25-28
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
scoreboard players operation #store.in energy.data /= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network temp.0 set from storage energy:network output
execute if score #store.temp energy.data matches 1 run data modify storage energy:network temp.1 set from storage energy:network output
execute if score #store.temp energy.data matches 2 run data modify storage energy:network temp.10 set from storage energy:network output
execute if score #store.temp energy.data matches 3 run data modify storage energy:network temp.11 set from storage energy:network output
execute if score #store.temp energy.data matches 4 run data modify storage energy:network temp.100 set from storage energy:network output
execute if score #store.temp energy.data matches 5 run data modify storage energy:network temp.101 set from storage energy:network output
execute if score #store.temp energy.data matches 6 run data modify storage energy:network temp.110 set from storage energy:network output
execute if score #store.temp energy.data matches 7 run data modify storage energy:network temp.111 set from storage energy:network output
execute if score #store.temp energy.data matches 8 run data modify storage energy:network temp.1000 set from storage energy:network output
execute if score #store.temp energy.data matches 9 run data modify storage energy:network temp.1001 set from storage energy:network output
execute if score #store.temp energy.data matches 10 run data modify storage energy:network temp.1010 set from storage energy:network output
execute if score #store.temp energy.data matches 11 run data modify storage energy:network temp.1011 set from storage energy:network output
execute if score #store.temp energy.data matches 12 run data modify storage energy:network temp.1100 set from storage energy:network output
execute if score #store.temp energy.data matches 13 run data modify storage energy:network temp.1101 set from storage energy:network output
execute if score #store.temp energy.data matches 14 run data modify storage energy:network temp.1110 set from storage energy:network output
execute if score #store.temp energy.data matches 15 run data modify storage energy:network temp.1111 set from storage energy:network output
data modify storage energy:network output set from storage energy:network temp
data remove storage energy:network temp

#bits 21-24
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
scoreboard players operation #store.in energy.data /= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network temp.0 set from storage energy:network output
execute if score #store.temp energy.data matches 1 run data modify storage energy:network temp.1 set from storage energy:network output
execute if score #store.temp energy.data matches 2 run data modify storage energy:network temp.10 set from storage energy:network output
execute if score #store.temp energy.data matches 3 run data modify storage energy:network temp.11 set from storage energy:network output
execute if score #store.temp energy.data matches 4 run data modify storage energy:network temp.100 set from storage energy:network output
execute if score #store.temp energy.data matches 5 run data modify storage energy:network temp.101 set from storage energy:network output
execute if score #store.temp energy.data matches 6 run data modify storage energy:network temp.110 set from storage energy:network output
execute if score #store.temp energy.data matches 7 run data modify storage energy:network temp.111 set from storage energy:network output
execute if score #store.temp energy.data matches 8 run data modify storage energy:network temp.1000 set from storage energy:network output
execute if score #store.temp energy.data matches 9 run data modify storage energy:network temp.1001 set from storage energy:network output
execute if score #store.temp energy.data matches 10 run data modify storage energy:network temp.1010 set from storage energy:network output
execute if score #store.temp energy.data matches 11 run data modify storage energy:network temp.1011 set from storage energy:network output
execute if score #store.temp energy.data matches 12 run data modify storage energy:network temp.1100 set from storage energy:network output
execute if score #store.temp energy.data matches 13 run data modify storage energy:network temp.1101 set from storage energy:network output
execute if score #store.temp energy.data matches 14 run data modify storage energy:network temp.1110 set from storage energy:network output
execute if score #store.temp energy.data matches 15 run data modify storage energy:network temp.1111 set from storage energy:network output
data modify storage energy:network output set from storage energy:network temp
data remove storage energy:network temp

#bits 17-20
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
scoreboard players operation #store.in energy.data /= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network temp.0 set from storage energy:network output
execute if score #store.temp energy.data matches 1 run data modify storage energy:network temp.1 set from storage energy:network output
execute if score #store.temp energy.data matches 2 run data modify storage energy:network temp.10 set from storage energy:network output
execute if score #store.temp energy.data matches 3 run data modify storage energy:network temp.11 set from storage energy:network output
execute if score #store.temp energy.data matches 4 run data modify storage energy:network temp.100 set from storage energy:network output
execute if score #store.temp energy.data matches 5 run data modify storage energy:network temp.101 set from storage energy:network output
execute if score #store.temp energy.data matches 6 run data modify storage energy:network temp.110 set from storage energy:network output
execute if score #store.temp energy.data matches 7 run data modify storage energy:network temp.111 set from storage energy:network output
execute if score #store.temp energy.data matches 8 run data modify storage energy:network temp.1000 set from storage energy:network output
execute if score #store.temp energy.data matches 9 run data modify storage energy:network temp.1001 set from storage energy:network output
execute if score #store.temp energy.data matches 10 run data modify storage energy:network temp.1010 set from storage energy:network output
execute if score #store.temp energy.data matches 11 run data modify storage energy:network temp.1011 set from storage energy:network output
execute if score #store.temp energy.data matches 12 run data modify storage energy:network temp.1100 set from storage energy:network output
execute if score #store.temp energy.data matches 13 run data modify storage energy:network temp.1101 set from storage energy:network output
execute if score #store.temp energy.data matches 14 run data modify storage energy:network temp.1110 set from storage energy:network output
execute if score #store.temp energy.data matches 15 run data modify storage energy:network temp.1111 set from storage energy:network output
data modify storage energy:network output set from storage energy:network temp
data remove storage energy:network temp

#bits 13-16
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
scoreboard players operation #store.in energy.data /= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network temp.0 set from storage energy:network output
execute if score #store.temp energy.data matches 1 run data modify storage energy:network temp.1 set from storage energy:network output
execute if score #store.temp energy.data matches 2 run data modify storage energy:network temp.10 set from storage energy:network output
execute if score #store.temp energy.data matches 3 run data modify storage energy:network temp.11 set from storage energy:network output
execute if score #store.temp energy.data matches 4 run data modify storage energy:network temp.100 set from storage energy:network output
execute if score #store.temp energy.data matches 5 run data modify storage energy:network temp.101 set from storage energy:network output
execute if score #store.temp energy.data matches 6 run data modify storage energy:network temp.110 set from storage energy:network output
execute if score #store.temp energy.data matches 7 run data modify storage energy:network temp.111 set from storage energy:network output
execute if score #store.temp energy.data matches 8 run data modify storage energy:network temp.1000 set from storage energy:network output
execute if score #store.temp energy.data matches 9 run data modify storage energy:network temp.1001 set from storage energy:network output
execute if score #store.temp energy.data matches 10 run data modify storage energy:network temp.1010 set from storage energy:network output
execute if score #store.temp energy.data matches 11 run data modify storage energy:network temp.1011 set from storage energy:network output
execute if score #store.temp energy.data matches 12 run data modify storage energy:network temp.1100 set from storage energy:network output
execute if score #store.temp energy.data matches 13 run data modify storage energy:network temp.1101 set from storage energy:network output
execute if score #store.temp energy.data matches 14 run data modify storage energy:network temp.1110 set from storage energy:network output
execute if score #store.temp energy.data matches 15 run data modify storage energy:network temp.1111 set from storage energy:network output
data modify storage energy:network output set from storage energy:network temp
data remove storage energy:network temp

#bits 9-12
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
scoreboard players operation #store.in energy.data /= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network temp.0 set from storage energy:network output
execute if score #store.temp energy.data matches 1 run data modify storage energy:network temp.1 set from storage energy:network output
execute if score #store.temp energy.data matches 2 run data modify storage energy:network temp.10 set from storage energy:network output
execute if score #store.temp energy.data matches 3 run data modify storage energy:network temp.11 set from storage energy:network output
execute if score #store.temp energy.data matches 4 run data modify storage energy:network temp.100 set from storage energy:network output
execute if score #store.temp energy.data matches 5 run data modify storage energy:network temp.101 set from storage energy:network output
execute if score #store.temp energy.data matches 6 run data modify storage energy:network temp.110 set from storage energy:network output
execute if score #store.temp energy.data matches 7 run data modify storage energy:network temp.111 set from storage energy:network output
execute if score #store.temp energy.data matches 8 run data modify storage energy:network temp.1000 set from storage energy:network output
execute if score #store.temp energy.data matches 9 run data modify storage energy:network temp.1001 set from storage energy:network output
execute if score #store.temp energy.data matches 10 run data modify storage energy:network temp.1010 set from storage energy:network output
execute if score #store.temp energy.data matches 11 run data modify storage energy:network temp.1011 set from storage energy:network output
execute if score #store.temp energy.data matches 12 run data modify storage energy:network temp.1100 set from storage energy:network output
execute if score #store.temp energy.data matches 13 run data modify storage energy:network temp.1101 set from storage energy:network output
execute if score #store.temp energy.data matches 14 run data modify storage energy:network temp.1110 set from storage energy:network output
execute if score #store.temp energy.data matches 15 run data modify storage energy:network temp.1111 set from storage energy:network output
data modify storage energy:network output set from storage energy:network temp
data remove storage energy:network temp

#bits 5-8
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
scoreboard players operation #store.in energy.data /= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network temp.0 set from storage energy:network output
execute if score #store.temp energy.data matches 1 run data modify storage energy:network temp.1 set from storage energy:network output
execute if score #store.temp energy.data matches 2 run data modify storage energy:network temp.10 set from storage energy:network output
execute if score #store.temp energy.data matches 3 run data modify storage energy:network temp.11 set from storage energy:network output
execute if score #store.temp energy.data matches 4 run data modify storage energy:network temp.100 set from storage energy:network output
execute if score #store.temp energy.data matches 5 run data modify storage energy:network temp.101 set from storage energy:network output
execute if score #store.temp energy.data matches 6 run data modify storage energy:network temp.110 set from storage energy:network output
execute if score #store.temp energy.data matches 7 run data modify storage energy:network temp.111 set from storage energy:network output
execute if score #store.temp energy.data matches 8 run data modify storage energy:network temp.1000 set from storage energy:network output
execute if score #store.temp energy.data matches 9 run data modify storage energy:network temp.1001 set from storage energy:network output
execute if score #store.temp energy.data matches 10 run data modify storage energy:network temp.1010 set from storage energy:network output
execute if score #store.temp energy.data matches 11 run data modify storage energy:network temp.1011 set from storage energy:network output
execute if score #store.temp energy.data matches 12 run data modify storage energy:network temp.1100 set from storage energy:network output
execute if score #store.temp energy.data matches 13 run data modify storage energy:network temp.1101 set from storage energy:network output
execute if score #store.temp energy.data matches 14 run data modify storage energy:network temp.1110 set from storage energy:network output
execute if score #store.temp energy.data matches 15 run data modify storage energy:network temp.1111 set from storage energy:network output
data modify storage energy:network output set from storage energy:network temp
data remove storage energy:network temp

#bits 1-4
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
scoreboard players operation #store.in energy.data /= #cons.16 energy.data
execute if score #store.negitive energy.data matches 1 run scoreboard players add #store.temp energy.data 8
execute if score #store.temp energy.data matches 0 run data modify storage energy:network temp.0 set from storage energy:network output
execute if score #store.temp energy.data matches 1 run data modify storage energy:network temp.1 set from storage energy:network output
execute if score #store.temp energy.data matches 2 run data modify storage energy:network temp.10 set from storage energy:network output
execute if score #store.temp energy.data matches 3 run data modify storage energy:network temp.11 set from storage energy:network output
execute if score #store.temp energy.data matches 4 run data modify storage energy:network temp.100 set from storage energy:network output
execute if score #store.temp energy.data matches 5 run data modify storage energy:network temp.101 set from storage energy:network output
execute if score #store.temp energy.data matches 6 run data modify storage energy:network temp.110 set from storage energy:network output
execute if score #store.temp energy.data matches 7 run data modify storage energy:network temp.111 set from storage energy:network output
execute if score #store.temp energy.data matches 8 run data modify storage energy:network temp.1000 set from storage energy:network output
execute if score #store.temp energy.data matches 9 run data modify storage energy:network temp.1001 set from storage energy:network output
execute if score #store.temp energy.data matches 10 run data modify storage energy:network temp.1010 set from storage energy:network output
execute if score #store.temp energy.data matches 11 run data modify storage energy:network temp.1011 set from storage energy:network output
execute if score #store.temp energy.data matches 12 run data modify storage energy:network temp.1100 set from storage energy:network output
execute if score #store.temp energy.data matches 13 run data modify storage energy:network temp.1101 set from storage energy:network output
execute if score #store.temp energy.data matches 14 run data modify storage energy:network temp.1110 set from storage energy:network output
execute if score #store.temp energy.data matches 15 run data modify storage energy:network temp.1111 set from storage energy:network output
execute if score #store.temp energy.data matches 16 run data modify storage energy:network temp.10000 set from storage energy:network output
data modify storage energy:network output set from storage energy:network temp
data remove storage energy:network temp

#copy result
data modify storage energy:network store merge from storage energy:network output
