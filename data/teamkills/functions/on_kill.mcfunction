
execute if entity @s[team=Red] run scoreboard players add Red teamKills 1
execute if entity @s[team=Blue] run scoreboard players add Blue teamKills 1

scoreboard players add @s ks_current 1
execute if score @s ks_current > @s ks_best run scoreboard players operation @s ks_best = @s ks_current

title @s actionbar {"text":"연속 킬: ","color":"yellow","extra":[{"score":{"name":"@s","objective":"ks_current"},"color":"gold"}]}

execute if score @s ks_current matches 5 if entity @s[tag=class_ar] run give @s pointblank:ammo556 192
execute if score @s ks_current matches 5 if entity @s[tag=class_lmg] run give @s arrow pointblank:ammo556 192
execute if score @s ks_current matches 5 if entity @s[tag=class_sr] run give @s pointblank:ammo338lapua 192
execute if score @s ks_current matches 5 if entity @s[tag=class_smg] run give @s pointblank:ammo45acp 192
execute if score @s ks_current matches 5 if entity @s[tag=class_dmg] run give @s splash_potion{Potion:"minecraft:harming"} 1

execute if score @s ks_current matches 5 run tellraw @a {"text":"","extra":[{"selector":"@s","color":"gold"},{"text":" 님이 연속 5킬 달성! (클래스 보급 지급)","color":"yellow"}]}
execute if score @s ks_current matches 5 run playsound minecraft:ui.toast.challenge_complete master @a

advancement revoke @s only teamkills:killed_player
