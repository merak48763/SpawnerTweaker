execute at 7374-0-0-0-1 store result score #spawn_range st.var run data get block ~ ~ ~ SpawnRange
scoreboard players add #spawn_range st.var 1
execute if score #spawn_range st.var matches 64.. run return fail
execute at 7374-0-0-0-1 store result block ~ ~ ~ SpawnRange short 1 run scoreboard players get #spawn_range st.var
