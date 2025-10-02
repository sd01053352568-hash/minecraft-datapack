
scoreboard objectives add teamKills dummy
scoreboard objectives add wins dummy
scoreboard objectives add gameState dummy
scoreboard objectives add size dummy
scoreboard objectives add prot dummy
scoreboard objectives add timer dummy
scoreboard objectives add ks_current dummy
scoreboard objectives add ks_best dummy
team add Red
team add Blue

team modify Red color red
team modify Blue color blue
team modify Red prefix {"text":"[RED] ","color":"red","bold":true}
team modify Blue prefix {"text":"[BLUE] ","color":"blue","bold":true}
team modify Red friendlyFire false
team modify Blue friendlyFire false
scoreboard objectives setdisplay sidebar teamKills
scoreboard players set Red teamKills 0
scoreboard players set Blue teamKills 0
scoreboard players set target wins 50
scoreboard players set state gameState 0
effect give @a[gamemode=!spectator] saturation 999999 0 true
tellraw @a {"text":"[TeamKills] 로비 대기 중입니다. 팀 배정·클래스 선택 후 시작 버튼을 누르세요.","color":"yellow"}
