#  Package dependences:
# - RNG Package
# - Own predicates
# - Own item modifiers

# 1. Use this command to define which slot the damage should be added, and if the process should ignore the Unbreaking enchantment:
# - Slot: (string) can be "mainhand" or "offhand"
# - IgnoreUnbreaking (boolean): Weather or not it should take into account the Unbreaking enchantment
data modify storage pk.common:data Package.DamageTool set value {Slot:"mainhand",IgnoreUnbreaking:0b}
# 2. Then use this command:
function pk_better_item_frames:packages/damage_tool/trigger