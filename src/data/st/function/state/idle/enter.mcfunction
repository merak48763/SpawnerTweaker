function st:remove_entities
title @s actionbar ""
execute if score #state st.var matches 2 run playsound block.note_block.hat voice @s ~ ~ ~ 1 0.7

scoreboard players set #state st.var 0
