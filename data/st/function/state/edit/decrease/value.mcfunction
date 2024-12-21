playsound block.note_block.pling voice @s ~ ~ ~ 1 1

execute if score #selected_param st.var matches 0 run function st:state/edit/decrease/value/player_range
execute if score #selected_param st.var matches 1 run function st:state/edit/decrease/value/spawn_range
