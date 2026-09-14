#> pk_be_it:packages/damage_item/damage

$item modify entity @s $(slot) [{type:"minecraft:set_components",components:{"minecraft:damage":$(damage)}}]
return 1