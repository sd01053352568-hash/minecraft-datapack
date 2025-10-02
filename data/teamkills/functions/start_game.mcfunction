
scoreboard players set Red size 0
scoreboard players set Blue size 0
execute as @a[team=Red,gamemode=!spectator] run scoreboard players add Red size 1
execute as @a[team=Blue,gamemode=!spectator] run scoreboard players add Blue size 1

scoreboard players set total size 0
execute as @a[gamemode=!spectator] run scoreboard players add total size 1

scoreboard players set min size 2
scoreboard players set minPerTeam size 1

execute unless score total size >= min size run tellraw @a {"text":"[시작 불가] 총 인원이 부족합니다.","color":"red"}
execute unless score total size >= min size run return 1
execute unless score Red size >= minPerTeam size run tellraw @a {"text":"[시작 불가] 레드 팀 인원이 부족합니다.","color":"red"}
execute unless score Red size >= minPerTeam size run return 1
execute unless score Blue size >= minPerTeam size run tellraw @a {"text":"[시작 불가] 블루 팀 인원이 부족합니다.","color":"red"}
execute unless score Blue size >= minPerTeam size run return 1

scoreboard players set state gameState 0
title @a clear
tellraw @a {"text":"경기 준비! 카운트다운이 시작됩니다.","color":"yellow"}

function teamkills:protect_enable
schedule function teamkills:start_countdown_3 1t
