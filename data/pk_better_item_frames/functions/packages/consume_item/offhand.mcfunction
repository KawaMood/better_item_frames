#> pk_better_item_frames:packages/consume_item/offhand

execute store result score $count pk.temp run data get entity @s Inventory[{Slot:-106b}].Count
scoreboard players remove $count pk.temp 1
item modify entity @s weapon.offhand pk_better_item_frames:packages/consume_item/consume_item