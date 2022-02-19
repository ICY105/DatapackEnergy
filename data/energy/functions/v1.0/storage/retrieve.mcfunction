#
# score #store.in energy.data -> key
# storage energy:network input -> value
#

#setup
data modify storage energy:network output set value {}
data remove storage energy:network temp

scoreboard players set #store.negitive energy.data 0
execute if score #store.in energy.data matches ..-1 run scoreboard players set #store.negitive energy.data 1
execute if score #store.in energy.data matches ..-1 run scoreboard players operation #store.in energy.data *= #cons.-1 energy.data

#bits 1-4
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data /= #cons.268435456 energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
execute if score #store.negitive energy.data matches 1 run scoreboard players add #store.temp energy.data 8
execute if score #store.temp energy.data matches 0 run data modify storage energy:network output set from storage energy:network store.0
execute if score #store.temp energy.data matches 1 run data modify storage energy:network output set from storage energy:network store.1
execute if score #store.temp energy.data matches 2 run data modify storage energy:network output set from storage energy:network store.10
execute if score #store.temp energy.data matches 3 run data modify storage energy:network output set from storage energy:network store.11
execute if score #store.temp energy.data matches 4 run data modify storage energy:network output set from storage energy:network store.100
execute if score #store.temp energy.data matches 5 run data modify storage energy:network output set from storage energy:network store.101
execute if score #store.temp energy.data matches 6 run data modify storage energy:network output set from storage energy:network store.110
execute if score #store.temp energy.data matches 7 run data modify storage energy:network output set from storage energy:network store.111
execute if score #store.temp energy.data matches 8 run data modify storage energy:network output set from storage energy:network store.1000
execute if score #store.temp energy.data matches 9 run data modify storage energy:network output set from storage energy:network store.1001
execute if score #store.temp energy.data matches 10 run data modify storage energy:network output set from storage energy:network store.1010
execute if score #store.temp energy.data matches 11 run data modify storage energy:network output set from storage energy:network store.1011
execute if score #store.temp energy.data matches 12 run data modify storage energy:network output set from storage energy:network store.1100
execute if score #store.temp energy.data matches 13 run data modify storage energy:network output set from storage energy:network store.1101
execute if score #store.temp energy.data matches 14 run data modify storage energy:network output set from storage energy:network store.1110
execute if score #store.temp energy.data matches 15 run data modify storage energy:network output set from storage energy:network store.1111
execute if score #store.temp energy.data matches 16 run data modify storage energy:network output set from storage energy:network store.10000

#bits 5-8
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data /= #cons.16777216 energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network output set from storage energy:network output.0
execute if score #store.temp energy.data matches 1 run data modify storage energy:network output set from storage energy:network output.1
execute if score #store.temp energy.data matches 2 run data modify storage energy:network output set from storage energy:network output.10
execute if score #store.temp energy.data matches 3 run data modify storage energy:network output set from storage energy:network output.11
execute if score #store.temp energy.data matches 4 run data modify storage energy:network output set from storage energy:network output.100
execute if score #store.temp energy.data matches 5 run data modify storage energy:network output set from storage energy:network output.101
execute if score #store.temp energy.data matches 6 run data modify storage energy:network output set from storage energy:network output.110
execute if score #store.temp energy.data matches 7 run data modify storage energy:network output set from storage energy:network output.111
execute if score #store.temp energy.data matches 8 run data modify storage energy:network output set from storage energy:network output.1000
execute if score #store.temp energy.data matches 9 run data modify storage energy:network output set from storage energy:network output.1001
execute if score #store.temp energy.data matches 10 run data modify storage energy:network output set from storage energy:network output.1010
execute if score #store.temp energy.data matches 11 run data modify storage energy:network output set from storage energy:network output.1011
execute if score #store.temp energy.data matches 12 run data modify storage energy:network output set from storage energy:network output.1100
execute if score #store.temp energy.data matches 13 run data modify storage energy:network output set from storage energy:network output.1101
execute if score #store.temp energy.data matches 14 run data modify storage energy:network output set from storage energy:network output.1110
execute if score #store.temp energy.data matches 15 run data modify storage energy:network output set from storage energy:network output.1111

#bits 9-12
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data /= #cons.1048576 energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network output set from storage energy:network output.0
execute if score #store.temp energy.data matches 1 run data modify storage energy:network output set from storage energy:network output.1
execute if score #store.temp energy.data matches 2 run data modify storage energy:network output set from storage energy:network output.10
execute if score #store.temp energy.data matches 3 run data modify storage energy:network output set from storage energy:network output.11
execute if score #store.temp energy.data matches 4 run data modify storage energy:network output set from storage energy:network output.100
execute if score #store.temp energy.data matches 5 run data modify storage energy:network output set from storage energy:network output.101
execute if score #store.temp energy.data matches 6 run data modify storage energy:network output set from storage energy:network output.110
execute if score #store.temp energy.data matches 7 run data modify storage energy:network output set from storage energy:network output.111
execute if score #store.temp energy.data matches 8 run data modify storage energy:network output set from storage energy:network output.1000
execute if score #store.temp energy.data matches 9 run data modify storage energy:network output set from storage energy:network output.1001
execute if score #store.temp energy.data matches 10 run data modify storage energy:network output set from storage energy:network output.1010
execute if score #store.temp energy.data matches 11 run data modify storage energy:network output set from storage energy:network output.1011
execute if score #store.temp energy.data matches 12 run data modify storage energy:network output set from storage energy:network output.1100
execute if score #store.temp energy.data matches 13 run data modify storage energy:network output set from storage energy:network output.1101
execute if score #store.temp energy.data matches 14 run data modify storage energy:network output set from storage energy:network output.1110
execute if score #store.temp energy.data matches 15 run data modify storage energy:network output set from storage energy:network output.1111

#bits 13-16
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data /= #cons.65536 energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network output set from storage energy:network output.0
execute if score #store.temp energy.data matches 1 run data modify storage energy:network output set from storage energy:network output.1
execute if score #store.temp energy.data matches 2 run data modify storage energy:network output set from storage energy:network output.10
execute if score #store.temp energy.data matches 3 run data modify storage energy:network output set from storage energy:network output.11
execute if score #store.temp energy.data matches 4 run data modify storage energy:network output set from storage energy:network output.100
execute if score #store.temp energy.data matches 5 run data modify storage energy:network output set from storage energy:network output.101
execute if score #store.temp energy.data matches 6 run data modify storage energy:network output set from storage energy:network output.110
execute if score #store.temp energy.data matches 7 run data modify storage energy:network output set from storage energy:network output.111
execute if score #store.temp energy.data matches 8 run data modify storage energy:network output set from storage energy:network output.1000
execute if score #store.temp energy.data matches 9 run data modify storage energy:network output set from storage energy:network output.1001
execute if score #store.temp energy.data matches 10 run data modify storage energy:network output set from storage energy:network output.1010
execute if score #store.temp energy.data matches 11 run data modify storage energy:network output set from storage energy:network output.1011
execute if score #store.temp energy.data matches 12 run data modify storage energy:network output set from storage energy:network output.1100
execute if score #store.temp energy.data matches 13 run data modify storage energy:network output set from storage energy:network output.1101
execute if score #store.temp energy.data matches 14 run data modify storage energy:network output set from storage energy:network output.1110
execute if score #store.temp energy.data matches 15 run data modify storage energy:network output set from storage energy:network output.1111

#bits 17-20
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data /= #cons.4096 energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network output set from storage energy:network output.0
execute if score #store.temp energy.data matches 1 run data modify storage energy:network output set from storage energy:network output.1
execute if score #store.temp energy.data matches 2 run data modify storage energy:network output set from storage energy:network output.10
execute if score #store.temp energy.data matches 3 run data modify storage energy:network output set from storage energy:network output.11
execute if score #store.temp energy.data matches 4 run data modify storage energy:network output set from storage energy:network output.100
execute if score #store.temp energy.data matches 5 run data modify storage energy:network output set from storage energy:network output.101
execute if score #store.temp energy.data matches 6 run data modify storage energy:network output set from storage energy:network output.110
execute if score #store.temp energy.data matches 7 run data modify storage energy:network output set from storage energy:network output.111
execute if score #store.temp energy.data matches 8 run data modify storage energy:network output set from storage energy:network output.1000
execute if score #store.temp energy.data matches 9 run data modify storage energy:network output set from storage energy:network output.1001
execute if score #store.temp energy.data matches 10 run data modify storage energy:network output set from storage energy:network output.1010
execute if score #store.temp energy.data matches 11 run data modify storage energy:network output set from storage energy:network output.1011
execute if score #store.temp energy.data matches 12 run data modify storage energy:network output set from storage energy:network output.1100
execute if score #store.temp energy.data matches 13 run data modify storage energy:network output set from storage energy:network output.1101
execute if score #store.temp energy.data matches 14 run data modify storage energy:network output set from storage energy:network output.1110
execute if score #store.temp energy.data matches 15 run data modify storage energy:network output set from storage energy:network output.1111

#bits 21-24
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data /= #cons.256 energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network output set from storage energy:network output.0
execute if score #store.temp energy.data matches 1 run data modify storage energy:network output set from storage energy:network output.1
execute if score #store.temp energy.data matches 2 run data modify storage energy:network output set from storage energy:network output.10
execute if score #store.temp energy.data matches 3 run data modify storage energy:network output set from storage energy:network output.11
execute if score #store.temp energy.data matches 4 run data modify storage energy:network output set from storage energy:network output.100
execute if score #store.temp energy.data matches 5 run data modify storage energy:network output set from storage energy:network output.101
execute if score #store.temp energy.data matches 6 run data modify storage energy:network output set from storage energy:network output.110
execute if score #store.temp energy.data matches 7 run data modify storage energy:network output set from storage energy:network output.111
execute if score #store.temp energy.data matches 8 run data modify storage energy:network output set from storage energy:network output.1000
execute if score #store.temp energy.data matches 9 run data modify storage energy:network output set from storage energy:network output.1001
execute if score #store.temp energy.data matches 10 run data modify storage energy:network output set from storage energy:network output.1010
execute if score #store.temp energy.data matches 11 run data modify storage energy:network output set from storage energy:network output.1011
execute if score #store.temp energy.data matches 12 run data modify storage energy:network output set from storage energy:network output.1100
execute if score #store.temp energy.data matches 13 run data modify storage energy:network output set from storage energy:network output.1101
execute if score #store.temp energy.data matches 14 run data modify storage energy:network output set from storage energy:network output.1110
execute if score #store.temp energy.data matches 15 run data modify storage energy:network output set from storage energy:network output.1111

#bits 25-28
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data /= #cons.16 energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network output set from storage energy:network output.0
execute if score #store.temp energy.data matches 1 run data modify storage energy:network output set from storage energy:network output.1
execute if score #store.temp energy.data matches 2 run data modify storage energy:network output set from storage energy:network output.10
execute if score #store.temp energy.data matches 3 run data modify storage energy:network output set from storage energy:network output.11
execute if score #store.temp energy.data matches 4 run data modify storage energy:network output set from storage energy:network output.100
execute if score #store.temp energy.data matches 5 run data modify storage energy:network output set from storage energy:network output.101
execute if score #store.temp energy.data matches 6 run data modify storage energy:network output set from storage energy:network output.110
execute if score #store.temp energy.data matches 7 run data modify storage energy:network output set from storage energy:network output.111
execute if score #store.temp energy.data matches 8 run data modify storage energy:network output set from storage energy:network output.1000
execute if score #store.temp energy.data matches 9 run data modify storage energy:network output set from storage energy:network output.1001
execute if score #store.temp energy.data matches 10 run data modify storage energy:network output set from storage energy:network output.1010
execute if score #store.temp energy.data matches 11 run data modify storage energy:network output set from storage energy:network output.1011
execute if score #store.temp energy.data matches 12 run data modify storage energy:network output set from storage energy:network output.1100
execute if score #store.temp energy.data matches 13 run data modify storage energy:network output set from storage energy:network output.1101
execute if score #store.temp energy.data matches 14 run data modify storage energy:network output set from storage energy:network output.1110
execute if score #store.temp energy.data matches 15 run data modify storage energy:network output set from storage energy:network output.1111

#bits 29-32
scoreboard players operation #store.temp energy.data = #store.in energy.data
scoreboard players operation #store.temp energy.data %= #cons.16 energy.data
execute if score #store.temp energy.data matches 0 run data modify storage energy:network output set from storage energy:network output.0
execute if score #store.temp energy.data matches 1 run data modify storage energy:network output set from storage energy:network output.1
execute if score #store.temp energy.data matches 2 run data modify storage energy:network output set from storage energy:network output.10
execute if score #store.temp energy.data matches 3 run data modify storage energy:network output set from storage energy:network output.11
execute if score #store.temp energy.data matches 4 run data modify storage energy:network output set from storage energy:network output.100
execute if score #store.temp energy.data matches 5 run data modify storage energy:network output set from storage energy:network output.101
execute if score #store.temp energy.data matches 6 run data modify storage energy:network output set from storage energy:network output.110
execute if score #store.temp energy.data matches 7 run data modify storage energy:network output set from storage energy:network output.111
execute if score #store.temp energy.data matches 8 run data modify storage energy:network output set from storage energy:network output.1000
execute if score #store.temp energy.data matches 9 run data modify storage energy:network output set from storage energy:network output.1001
execute if score #store.temp energy.data matches 10 run data modify storage energy:network output set from storage energy:network output.1010
execute if score #store.temp energy.data matches 11 run data modify storage energy:network output set from storage energy:network output.1011
execute if score #store.temp energy.data matches 12 run data modify storage energy:network output set from storage energy:network output.1100
execute if score #store.temp energy.data matches 13 run data modify storage energy:network output set from storage energy:network output.1101
execute if score #store.temp energy.data matches 14 run data modify storage energy:network output set from storage energy:network output.1110
execute if score #store.temp energy.data matches 15 run data modify storage energy:network output set from storage energy:network output.1111

#clear bad data
data remove storage energy:network output.0
data remove storage energy:network output.1
data remove storage energy:network output.10
data remove storage energy:network output.11
data remove storage energy:network output.100
data remove storage energy:network output.101
data remove storage energy:network output.110
data remove storage energy:network output.111
data remove storage energy:network output.1000
data remove storage energy:network output.1001
data remove storage energy:network output.1010
data remove storage energy:network output.1011
data remove storage energy:network output.1100
data remove storage energy:network output.1101
data remove storage energy:network output.1110
data remove storage energy:network output.1111
data remove storage energy:network output.10000
