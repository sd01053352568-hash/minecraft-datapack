execute unless entity @a[team=] run tellraw @a {"text":"랜덤 배정 완료!","color":"yellow"}
execute unless entity @a[team=] run return 1
scoreboard players operation diff size = Red size
scoreboard players operation diff size -= Blue size
execute if score diff size matches ..-1 run team join Red @a[team=,limit=1,sort=random]
execute if score diff size matches 1.. run team join Blue @a[team=,limit=1,sort=random]
execute if score diff size matches 0 run function teamkills:assign_one_simple
function teamkills:assign_fair_random_next