scoreboard objectives add teamKills dummy
scoreboard objectives add wins dummy
scoreboard objectives setdisplay sidebar teamKills
team add Red
team add Blue
team modify Red color red
team modify Blue color blue
team modify Red friendlyFire false
team modify Blue friendlyFire false
scoreboard players set Red teamKills 0
scoreboard players set Blue teamKills 0
scoreboard players set target wins 50
scoreboard players reset lock wins
tellraw @a {"text":"[TeamKills] 로드 완료! /team join <Red|Blue> 로 팀을 선택하세요.","color":"yellow"}
scoreboard objectives add size dummy