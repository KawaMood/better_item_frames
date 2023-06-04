#> pk_better_item_frames:packages/damage_tool/should_item_break

# Store the current damage and increment it
execute store result score $damage pk.temp run data get storage pk.common:data Package.DamageTool.Item.tag.Damage
scoreboard players add $damage pk.temp 1

# Check if the item Damage reaches its max value
summon armor_stand ~ ~ ~ {Tags:["pk.temp.checker"],Invisible:1b,Marker:1b}
data modify entity @e[type=armor_stand,tag=pk.temp.checker,distance=..0.1,limit=1] HandItems[0] set from storage pk.common:data Package.DamageTool.Item
scoreboard players set $should_item_break pk.temp 0
execute if entity @e[type=armor_stand,tag=pk.temp.checker,predicate=pk_better_item_frames:packages/damage_tool/should_tool_break,distance=..0.1,limit=1] run scoreboard players set $should_item_break pk.temp 1
kill @e[type=armor_stand,tag=pk.temp.checker,distance=..0.1,limit=1]
execute if score $should_item_break pk.temp matches 0 run function pk_better_item_frames:packages/damage_tool/damage
execute if score $should_item_break pk.temp matches 1 run function pk_better_item_frames:packages/damage_tool/break