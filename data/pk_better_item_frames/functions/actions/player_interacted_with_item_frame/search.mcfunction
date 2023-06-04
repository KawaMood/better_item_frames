#> pk_better_item_frames:actions/player_interacted_with_item_frame/search

# Check if an item frame's item has been rotated around
# - If not, that means player put an item in it
# - If yes, update this item frame
execute unless entity @s[scores={pk.be_it.item_rotation=0..}] run scoreboard players set @s pk.be_it.item_rotation 0
execute store result score $temp pk.be_it.item_rotation run data get entity @s ItemRotation
execute unless score $temp pk.be_it.item_rotation = @s pk.be_it.item_rotation run function pk_better_item_frames:actions/player_interacted_with_item_frame/switch_events