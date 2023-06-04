#> pk_better_item_frames:base/uninstall/start

# Remove features specific to the data pack
function pk_better_item_frames:base/uninstall/helpers/remove_specific_features

# Remove features common to all KawaMood data packs if there is no KawaMood data pack installed anymore
execute unless data storage pk.common:data Datapacks[{}] run function pk_better_item_frames:base/uninstall/helpers/remove_common_features

# Logs
tellraw @a [{"text": "Uninstalled ","color": "yellow"},{"text": "KawaMood's Better Item Frames","color": "aqua","bold": true},{"text": " successfully.\nYou can now safely remove the data pack from the \"datapacks/\" folder of your world","color": "yellow"}]