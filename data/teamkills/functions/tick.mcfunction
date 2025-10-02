
execute if score Red teamKills >= target wins unless score lock wins matches 999 run function teamkills:win_red
execute if score Blue teamKills >= target wins unless score lock wins matches 999 run function teamkills:win_blue
execute if score state gameState matches 1 run execute store result bossbar team:red value run scoreboard players get Red teamKills
execute if score state gameState matches 1 run execute store result bossbar team:blue value run scoreboard players get Blue teamKills
execute if score state gameState matches 1 run bossbar set team:red players @a[gamemode=!spectator]
execute if score state gameState matches 1 run bossbar set team:blue players @a[gamemode=!spectator]
execute if score state gameState matches 1 run effect give @a[gamemode=!spectator] saturation 2 0 true

execute as @a[tag=died] if entity @s[nbt={Health:20.0f}] run function teamkills:on_respawn_safe
