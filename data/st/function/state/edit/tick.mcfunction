teleport 7374-0-0-0-9 ~ ~ ~
execute as 7374-0-0-0-9 run function st:state/edit/tick_interaction
execute as 7374-0-0-0-1 at @s run function st:state/edit/tick_spawner

# Actionbar
data modify storage st:text root set value ['""']
execute if predicate st:holding_ctrl run function st:state/edit/text/ctrl
execute unless predicate st:holding_ctrl run function st:state/edit/text/normal
title @s actionbar {"storage": "st:text", "nbt": "root[]", "separator": "", "interpret": true}

execute at 7374-0-0-0-1 unless entity @s[distance=..105] run function st:state/idle/enter
