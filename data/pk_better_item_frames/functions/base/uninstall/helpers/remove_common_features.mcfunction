#> pk_better_item_frames:base/uninstall/helpers/remove_common_features
# Remove all features common to each KawaMood data packs
# /!\ Do not run this function manually!

# Remove pk.common.data storage data
data remove storage pk.common:data Datapacks
data remove storage pk.common:data Temp

# Remove scores
scoreboard objectives remove pk.value
scoreboard objectives remove pk.temp