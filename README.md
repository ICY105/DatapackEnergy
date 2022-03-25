### Translations
* [English](https://github.com/ICY105/DatapackEnergy/blob/main/README.md)
* [Française](https://github.com/ICY105/DatapackEnergy/blob/main/README.fr.md)

# Datapack Energy
A Minecraft Datapack library for handling energy systems, such as for Mechanization or Simple Energy. This library manages the following:
* Scoreboard data defining how energy is stored and transfered
* Designating custom blocks as devices that can send energy (ie. a generator that produces power and sends it to machines)
* Designating custom blocks as devices that can receive energy (ie. a machine that receives power and consumes it to do a task)
* Designating custom blocks as devices that both send and receive energy (ie. a battery that can receive and store power, then send it to machines)
* Designating custom blocks as a cable that connects and transfers energy between other devices
* Automatic transfering of energy between machines adjacent to each other, or connected through a cable
* Standards for items that store energy in the player's inventory, with the ability to add and remove energy from a player's inventory
* Supporting functions for all of these features

This is an embedded library, so you package it inside your datapack as opposed to having a separate download. Requires [LanternLoad](https://github.com/LanternMC/load) to operate.

Note: Datapack Energy does not enforce any in-game notation for how energy is convayed, and in this document simply refers to energy in terms of 'units.' However, by convention real world units are most commonly used (kJ or kWh, kW).

## Scoreboards
These are scoreboard objectives used to represent a value of some kind.

```
energy.data
  Used for math, passing variables between functions, and storing a bit of data on a machine.
  Cables' energy.data value is a binary encoded number indicating which sides are connected, ie:
    63 -> 1  1  1  1  1  1 -> all sides are active
	  32 16 8  4  2  1
    This can be used to update the model to display connections when 
    function #energy:v1/cable_update is triggered.
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
  Indicates how much power a machine or cable can transfer. Should be positive on all
  machines *and* cables. Set to max 32-bit integer for unlimited transfer.
  Cables are network limited, so if 3 machines have 50 units of energy (total 150 units)
  and cables can transfer a total of 100 units, then 2 machines will be emptied to 0, but
  the remaining machine will have 50 units left over. 
  The rate of a network is limited by the lowest tier cable.
```

```
energy.usage_rate
  This is a computed score equal to the change in power of machine, before
  transfering. That is, if a Machine has 50 units of power, then generates 25 units (total
  75 units), then sends all 75 units to a battery, this score is equal to 25 units (for the
  25 units of power generated before transfering it all out of the machine).
  This score is provided as a convienent source of data and should not be changed manually.
```

```
energy.change_rate
  This is a computed score equal to the change in power of machine, after
  transfering. That is, if a Machine has 50 units of power, then generates 25 units (total
  75 units), then sends all 75 units to a battery, this score is equal to -50 units
  (it started at 50 units and ended with 0 units: 0 - 50 = -50).
  This score is provided as a convienent source of data and should not be changed manually.
```

## Selector Tags
These are tags (added throught the /tag command) that mark entities as being something, or as needing to do something.

```
energy.send 
  Enables a machine to send energy (ie. a generator)
  
energy.receive 
  Enables a machine to receive energy (ie. a consumer of power)
  A storage medium (ie. battery) can have both send and receive.
  Batteries to not transfer power between each other to avoid infinite loops.
  Machines will transfer energy when adjacent, without the need for cables.
```

```
energy.cable
  Indicates object is a cable, and should connect machines.
```

## Function Calls
Function calls are called by you to trigger certian events or features.

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

```
function energy:v1/api/modify_player_energy
  Call on a player to add or remove power from items stored in their inventory.
  This treats the entire inv as a single pool of energy, and does not modify
  power on specific items.
  #player.in energy.data -> amount of energy to add (+) or remove (-)
  #player.out energy.data <- 0 for failed to modify inv, 1 for suceeded.
```

## Function Tags
Functions tags are called by Datapack Energy to inform you an event has happened, and to allow you to make changes to the event. To use these calls, you must add a function to the tag list.

```
function #energy:v1/cable_can_connect
  Executed as and at a machine.
  Used to disable cables connecting to a machine from certain sides.
  #cable.in energy.data -> 0-5 indicating direction (up, down, north, south, east, west)
  #cable.out energy.data -> 1 for can connect, 0 for cannot connect
```

```
function #energy:v1/cable_update
  Called as and at a cable when an update is trigged, such as a machine being placed next to it.
  Intended use is to update the cable's model, but can be used for other updates.
```

```
function #energy:v1/update_energy_item
  Called as a player when an item has been modified by the modify_player_energy function.
  The Item will be in storage at energy:temp list[0] - Modify this as needed (such as adding Lore
  specifying how much energy is stored in the item).
```

## NBT Format
These are NBT data specifications for items, storage, or entities that hold special data.

```
Item that store power use the following format:
Item.tag.energy{storage:<amount>,max_storage:<max_amount>}
```

## How to use
1. Install [LanternLoad](https://github.com/LanternMC/load) in your datapack
2. Copy the `data/energy` folder into your data pack
3. Merge the contents of `DatapackEnergy/data/load/tags/functions/load.json` and your own `data/load/tags/functions/load.json`
4. Implement the API as described above.

