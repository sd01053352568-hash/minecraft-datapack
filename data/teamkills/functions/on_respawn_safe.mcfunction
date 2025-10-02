
tag @s remove died
clear @s
attribute @s minecraft:generic.max_health base set 40.0
effect give @s instant_health 1 6 true
effect give @s saturation 30 0 true
item replace entity @s armor.head with iron_helmet{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}],Damage:0} 1
item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}],Damage:0} 1
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}],Damage:0} 1
item replace entity @s armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}],Damage:0} 1
execute as @s[tag=!class_ar,tag=!class_smg,tag=!class_lmg,tag=!class_dmg,tag=!class_sr] run tag @s add class_ar

# 클래스별 장비 재지급
execute as @s[tag=class_ar] run give @s pointblank:m4a1
execute as @s[tag=class_ar] run give @s pointblank:m1911a1
execute as @s[tag=class_ar] run give @s pointblank:ammo556 192
execute as @s[tag=class_ar] run give @s pointblank:ammo45acp 64

execute as @s[tag=class_smg] run give @s pointblank:vector
execute as @s[tag=class_smg] run give @s pointblank:m1911a1
execute as @s[tag=class_smg] run give @s pointblank:ammo556 192
execute as @s[tag=class_smg] run give @s pointblank:ammo45acp 64

execute as @s[tag=class_lmg] run give @s pointblank:m249
execute as @s[tag=class_lmg] run give @s pointblank:m1911a1
execute as @s[tag=class_lmg] run give @s pointblank:ammo556
execute as @s[tag=class_lmg] run give @s pointblank:ammo45acp 64

execute as @s[tag=class_dmg] run give @s pointblank:uar10
execute as @s[tag=class_dmg] run give @s pointblank:m1911a1
execute as @s[tag=class_dmg] run give @s pointblank:ammo762x51 192
execute as @s[tag=class_dmg] run give @s pointblank:ammo45acp 64

execute as @s[tag=class_sr] run give @s pointblank:l96a1
execute as @s[tag=class_sr] run give @s pointblank:m1911a1
execute as @s[tag=class_sr] run give @s pointblank:ammo338lapua 128
execute as @s[tag=class_sr] run give @s pointblank:ammo45acp 64

execute if entity @s[team=Red] run tp @s @e[type=armor_stand,nbt={Marker:1b},name=RedSpawn,limit=1,sort=nearest]
execute if entity @s[team=Blue] run tp @s @e[type=armor_stand,nbt={Marker:1b},name=BlueSpawn,limit=1,sort=nearest]

title @s actionbar {"text":"리스폰 완료","color":"gold"}
playsound minecraft:block.note_block.pling player @s
