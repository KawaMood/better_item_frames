#> pk_better_item_frames:packages/damage_tool/damage

execute store result storage pk.common:data Temp.Damage short 1 run scoreboard players get $damage pk.temp
execute if data storage pk.common:data Package.DamageTool{Slot:"mainhand"} run item modify entity @s weapon.mainhand pk_better_item_frames:packages/damage_tool/set_damage
execute if data storage pk.common:data Package.DamageTool{Slot:"offhand"} run item modify entity @s weapon.offhand pk_better_item_frames:packages/damage_tool/set_damage