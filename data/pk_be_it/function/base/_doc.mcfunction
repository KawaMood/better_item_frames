# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Scores :
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Common to all PK data packs:
#   Logs
#   $logs.load pk.value | default: (undefined) | <=0 = mask load logs | (undefined) or >=1 = show load logs
#   $logs.tick pk.value | default: (undefined) | (undefined) or <=0 = mask tick logs | >=1 = show tick logs

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Tags:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# pk.dev: Allow player to see data packs specific logs
tag @s add pk.dev