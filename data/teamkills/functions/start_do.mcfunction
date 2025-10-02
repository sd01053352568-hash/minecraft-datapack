
scoreboard players set Red teamKills 0
scoreboard players set Blue teamKills 0
scoreboard players reset lock wins
scoreboard players set state gameState 1

title @a title {"text":"[RED] vs [BLUE] START!","color":"green","bold":true}
playsound minecraft:entity.ender_dragon.growl master @a
tellraw @a {"text":"경기 시작! 선착 50킬!","color":"aqua"}

execute as @a[gamemode=!spectator] run clear @s
execute as @a[gamemode=!spectator] run give @s cooked_beef 8

execute as @a[gamemode=!spectator] run item replace entity @s armor.head with iron_helmet{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}],Damage:0} 1
execute as @a[gamemode=!spectator] run item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}],Damage:0} 1
execute as @a[gamemode=!spectator] run item replace entity @s armor.legs with iron_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}],Damage:0} 1
execute as @a[gamemode=!spectator] run item replace entity @s armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}],Damage:0} 1

execute as @a[gamemode=!spectator,tag=!class_ar,tag=!class_smg,tag=!class_lmg,tag=!class_dmg,tag=!class_sr] run tag @s add class_ar

# 클래스별 장비 지급
execute as @a[tag=class_ar,gamemode=!spectator] run give @s pointblank:m4a1
execute as @a[tag=class_ar,gamemode=!spectator] run give @s pointblank:m1911a1
execute as @a[tag=class_ar,gamemode=!spectator] run give @s pointblank:ammo556 192
execute as @a[tag=class_ar,gamemode=!spectator] run give @s pointblank:ammo45acp 64

execute as @a[tag=class_smg,gamemode=!spectator] run give @s pointblank:vector
execute as @a[tag=class_smg,gamemode=!spectator] run give @s pointblank:m1911a1
execute as @a[tag=class_smg,gamemode=!spectator] run give @s pointblank:ammo45acp 192
execute as @a[tag=class_smg,gamemode=!spectator] run give @s pointblank:ammo45acp 64

execute as @a[tag=class_lmg,gamemode=!spectator] run give @s pointblank:m249
execute as @a[tag=class_lmg,gamemode=!spectator] run give @s pointblank:m1911a1
execute as @a[tag=class_lmg,gamemode=!spectator] run give @s pointblank:ammo556 192
execute as @a[tag=class_lmg,gamemode=!spectator] run give @s pointblank:ammo45acp 64

execute as @a[tag=class_dmg,gamemode=!spectator] run give @s pointblank:uar10
execute as @a[tag=class_dmg,gamemode=!spectator] run give @s pointblank:m1911a1
execute as @a[tag=class_dmg,gamemode=!spectator] run give @s pointblank:ammo762x51 192
execute as @a[tag=class_dmg,gamemode=!spectator] run give @s pointblank:ammo45acp 64

execute as @a[tag=class_sr,gamemode=!spectator] run give @s pointblank:l96a1
execute as @a[tag=class_sr,gamemode=!spectator] run give @s pointblank:m1911a1
execute as @a[tag=class_sr,gamemode=!spectator] run give @s pointblank:ammo338lapua 128
execute as @a[tag=class_sr,gamemode=!spectator] run give @s pointblank:ammo45acp 64

execute as @a[team=Red,gamemode=!spectator] at @s run tp @s @e[type=armor_stand,nbt={Marker:1b},name=RedArena,limit=1,sort=nearest]
execute as @a[team=Blue,gamemode=!spectator] at @s run tp @s @e[type=armor_stand,nbt={Marker:1b},name=BlueArena,limit=1,sort=nearest]

bossbar add team:red {"text":"[RED] 킬 수","color":"red"}
bossbar add team:blue {"text":"[BLUE] 킬 수","color":"blue"}
bossbar set team:red max 50
bossbar set team:blue max 50
bossbar set team:red value 0
bossbar set team:blue value 0
bossbar set team:red players @a[gamemode=!spectator]
bossbar set team:blue players @a[gamemode=!spectator]

execute as @a[gamemode=!spectator] run attribute @s minecraft:generic.max_health base set 40.0
execute as @a[gamemode=!spectator] run effect give @s instant_health 1 6 true
effect give @a[gamemode=!spectator] saturation 999999 0 true
schedule function teamkills:protect_disable 1t


