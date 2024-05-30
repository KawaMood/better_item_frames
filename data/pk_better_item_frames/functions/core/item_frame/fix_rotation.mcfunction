#> pk_better_item_frames:core/item_frame/fix_rotation

# Add tags
tag @s add pk.be_it.rotation_fixed

# Reduce count
execute as @a[tag=pk.temp.current.player,distance=..10,limit=1] run function pk_better_item_frames:packages/consume_item/mainhand

# Animations
playsound block.amethyst_block.resonate player @a[distance=..30] ~ ~ ~
particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.001 8