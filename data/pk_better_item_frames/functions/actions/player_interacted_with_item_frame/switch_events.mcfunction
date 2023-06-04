#> pk_better_item_frames:actions/player_interacted_with_item_frame/switch_events

# If the item frame contains an item, isn't invisible yet, and the player was sneaking using shears
execute if data entity @s[tag=!pk.be_it.invisible] Item.id if entity @a[tag=pk.temp.current.player,predicate=pk_better_item_frames:flags/sneak,predicate=pk_better_item_frames:hold/shears,distance=..10,limit=1] run function pk_better_item_frames:core/item_frame/cut

# If the item frame is already invisible, and the player was sneaking using a brush
execute if data entity @s[tag=pk.be_it.invisible] Item.id if entity @a[tag=pk.temp.current.player,predicate=pk_better_item_frames:flags/sneak,predicate=pk_better_item_frames:hold/brush,distance=..10,limit=1] run function pk_better_item_frames:core/item_frame/repair

# If the player was sneaking using a glass pane
execute if entity @s[tag=!pk.be_it.rotation_fixed] if entity @a[tag=pk.temp.current.player,predicate=pk_better_item_frames:flags/sneak,predicate=pk_better_item_frames:hold/glass_pane,distance=..10,limit=1] run function pk_better_item_frames:core/item_frame/fix_rotation

# If the item frame has its rotation fixed, reset the rotation
execute store result entity @s[tag=pk.be_it.rotation_fixed] ItemRotation short 1 run scoreboard players get @s pk.be_it.item_rotation

# Update item rotation from score
execute store result score @s[tag=!pk.be_it.rotation_fixed] pk.be_it.item_rotation run data get entity @s ItemRotation