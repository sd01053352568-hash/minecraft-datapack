
scoreboard players set Red teamKills 0
scoreboard players set Blue teamKills 0
scoreboard players reset lock wins
scoreboard players set state gameState 0
scoreboard players set @a ks_current 0

title @a clear
tellraw @a {"text":"경기 종료! 로비로 이동합니다.","color":"yellow"}

execute as @a[gamemode=!spectator] at @s run tp @s @e[type=armor_stand,nbt={Marker:1b},name=Lobby,limit=1,sort=nearest]

bossbar set team:red players []
bossbar set team:blue players []

execute as @a[gamemode=!spectator] run attribute @s minecraft:generic.max_health base set 20.0
execute as @a[gamemode=!spectator] run effect give @s instant_health 1 4 true
