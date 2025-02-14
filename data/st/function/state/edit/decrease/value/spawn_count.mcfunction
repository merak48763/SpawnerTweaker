execute at 7374-0-0-0-1 store result score #spawn_count st.var run data get block ~ ~ ~ SpawnCount
scoreboard players remove #spawn_count st.var 1
execute if score #spawn_count st.var matches ..-1 run return fail
execute at 7374-0-0-0-1 store result block ~ ~ ~ SpawnCount short 1 run scoreboard players get #spawn_count st.var
