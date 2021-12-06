# DatapackEnergy
A Minecraft Datapack library for handling energy systems, such as for Mechanization or Simple Energy.

This is an embedded library, so you package it inside your datapack as opposed to having a separate download. Requires LanternLoad to operate.

## Scoreboards

```
energy.data
  Used for math, passing variables between functions, and storing a bit of data on a machine.
  Cables' energy.data value is a binary encoded number indicating which sides are connected, ie:
    63 -> 1  1  1  1  1  1 -> all sides are active
	      32 16 8  4  2  1
    This can be used to update the model to display connections.
```

```
energy.storage
  Indicates how much power is stored in this machine.
  Typically a 'generator' type machine will increase this number to create power,
  and a consuming machine will subtract from this number to use power.
```

```
energy.max_storage
  Indicates the max power stored in this machine.
```

```
energy.transfer_rate
  Indicates how much power a machine or cable can transfer.
  Cables are network limited, so if 3 machines have 50 units of energy (total 150 units)
  and cables can transfer a total of 100 units, then 2 machines will be emptied to 0, but
  the remaining machine will have 50 units left over. The rate of a network is limited by the lowest tier cable.
```

## Marker Tags

```
energy.send 
  Enables a machine to send energy (ie. a generator)
```

```
energy.receive 
  Enables a machine to receive energy (ie. a consumer of power)
  A storage medium (ie. battery) can have both send and receive.
  Batteries to not transfer power between each other to avoid infinite loops.
```

```
energy.cable
  Indicates object is a cable, and should connect machines.
```

## Function Tags

```
function #energy:v1/cable_can_connect
  Executed as a machine
  Used to disable cables connecting to a machine from certain sides.
  #cable.in energy.data -> 0-5 indicating direction (up, down, north, south, east, west)
  #cable.out energy.data -> 1 for can connect, 0 for cannot connect
```

```
function #energy:v1/cable_update
  Called as and at a cable when an update is trigged, such as a machine being placed next to it.
  Intended use is to update the cable's model, but can be used for other updates.
```

## Function Calls

```
function energy:v1/api/init_cable
  Call on a new cable to initialize its connections
```

```
function energy:v1/api/init_machine
  Call on a new machine to initialize its connections
```

```
function energy:v1/api/break_cable
  Call on a cable when broken to remove its connections
```

```
function energy:v1/api/break_machine
  Call on a machine when broken to remove its connections
```
