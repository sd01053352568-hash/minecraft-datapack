scoreboard players set Red size 0
scoreboard players set Blue size 0
execute as @a[team=Red] run scoreboard players add Red size 1
execute as @a[team=Blue] run scoreboard players add Blue size 1
function teamkills:assign_fair_random_loop