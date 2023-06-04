#> pk_better_item_frames:packages/consume_item/mainhand

execute store result score $count pk.temp run data get entity @s SelectedItem.Count
scoreboard players remove $count pk.temp 1
item modify entity @s weapon.mainhand pk_better_item_frames:packages/consume_item/consume_item