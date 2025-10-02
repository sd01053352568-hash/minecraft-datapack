
title @a title {"text":"[RED] 승리!","color":"red","bold":true}
playsound minecraft:ui.toast.challenge_complete master @a
scoreboard players set lock wins 999
schedule function teamkills:reset 2s
