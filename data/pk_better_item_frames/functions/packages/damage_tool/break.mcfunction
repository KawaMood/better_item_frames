#> pk_better_item_frames:packages/damage_tool/break

# Remove from player inventory
execute if data storage pk.common:data Package.DamageTool{Slot:"mainhand"} run item replace entity @s weapon.mainhand with air
execute if data storage pk.common:data Package.DamageTool{Slot:"offhand"} run item replace entity @s weapon.offhand with air

# Sound
execute at @s run playsound entity.item.break player @a[distance=..30] ~ ~ ~ 1 1