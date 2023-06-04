#> pk_better_item_frames:core/item_frame/repair

# Add tags
tag @s remove pk.be_it.invisible

# Change invisibility and reset ItemRotation data
data modify entity @s Invisible set value 0b
execute store result entity @s ItemRotation short 1 run scoreboard players get @s pk.be_it.item_rotation

# Reduce durability
execute as @a[tag=pk.temp.current.player,distance=..10,limit=1] run function pk_better_item_frames:packages/damage_tool/trigger

# Animations
playsound block.slime_block.place player @a[distance=..30] ~ ~ ~ 1 0.8
particle poof ~ ~ ~ 0.2 0.2 0.2 0.001 4