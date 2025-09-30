execute if entity @s[team=Red] run scoreboard players add Red teamKills 1
execute if entity @s[team=Blue] run scoreboard players add Blue teamKills 1
title @s actionbar {"text":"+1 Kill","color":"green"}
advancement revoke @s only teamkills:killed_player