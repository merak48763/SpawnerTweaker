playsound block.note_block.hat voice @s ~ ~ ~ 1 1

scoreboard players remove #selected_param st.var 1
execute if score #selected_param st.var matches ..-1 run scoreboard players set #selected_param st.var 2
