#> pk_better_item_frames:actions/player_interacted_with_item_frame/trigger

advancement revoke @s only pk_better_item_frames:interactions/interacted_with_item_frame

tag @s add pk.temp.current.player
execute as @e[type=#pk_better_item_frames:item_frames,distance=..10] at @s run function pk_better_item_frames:actions/player_interacted_with_item_frame/search
tag @s remove pk.temp.current.player