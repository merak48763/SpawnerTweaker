scoreboard players reset * st.var
scoreboard objectives remove st.var
data remove storage st:spawner root
data remove storage st:transformation root
data remove storage st:text root

function st:remove_entities

tellraw @s "Datapack unloaded.\nDelete the datapack before reloading."
