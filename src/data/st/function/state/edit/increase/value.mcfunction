playsound block.note_block.pling voice @s ~ ~ ~ 1 2

execute if score #selected_param st.var matches 0 run function st:state/edit/increase/value/player_range
execute if score #selected_param st.var matches 1 run function st:state/edit/increase/value/spawn_range
execute if score #selected_param st.var matches 2 run function st:state/edit/increase/value/spawn_count
