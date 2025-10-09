execute at 7374-0-0-0-1 store result score #player_range st.var run data get block ~ ~ ~ RequiredPlayerRange
scoreboard players remove #player_range st.var 1
execute if score #player_range st.var matches ..-1 run return fail
execute at 7374-0-0-0-1 store result block ~ ~ ~ RequiredPlayerRange short 1 run scoreboard players get #player_range st.var
