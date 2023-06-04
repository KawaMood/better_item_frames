#> pk_better_item_frames:packages/damage_tool/unbreaking_attempt

# Calculate chance to damage depending on Unbreaking enchantment level ((100 / level + 1)%) : on base 1000
scoreboard players add $unbreaking_lvl pk.temp 1
scoreboard players operation $damage_chance pk.temp = $1000 pk.value
scoreboard players operation $damage_chance pk.temp /= $unbreaking_lvl pk.temp
function pk_better_item_frames:packages/random/uniform
execute if score $random pk.value <= $damage_chance pk.temp run function pk_better_item_frames:packages/damage_tool/should_item_break