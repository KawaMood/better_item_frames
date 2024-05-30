#> pk_better_item_frames:packages/damage_tool/trigger

# Store item
execute if data storage pk.common:data Package.DamageTool{Slot:"mainhand"} run data modify storage pk.common:data Package.DamageTool.Item set from entity @s SelectedItem
execute if data storage pk.common:data Package.DamageTool{Slot:"offhand"} run data modify storage pk.common:data Package.DamageTool.Item set from entity @s Inventory[{Slot:-106b}]

# Check if the tool has an Unbreaking enchantment
scoreboard players set $unbreaking_lvl pk.temp 0
execute unless data storage pk.common:data Package.DamageTool{IgnoreUnbreaking:1b} store result score $unbreaking_lvl pk.temp run data get storage pk.common:data Package.DamageTool.Item.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
# - If not, check if the item should break before damaging it
execute if score $unbreaking_lvl pk.temp matches 0 run function pk_better_item_frames:packages/damage_tool/should_item_break
# - If yes, check if the item should take a damage
execute if score $unbreaking_lvl pk.temp matches 1.. run function pk_better_item_frames:packages/damage_tool/unbreaking_attempt