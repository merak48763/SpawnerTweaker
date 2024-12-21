scoreboard objectives add st.var dummy
scoreboard players set #working st.var 1

# 0: Idle
# 1: Priming spawner
# 2: Editing spawner
scoreboard players set #state st.var 0

# 0: @p range
# 1: spawn range
scoreboard players set #selected_param st.var 0

# UUIDs:
# 7374-0-0-0-1: spawner center
# 7374-0-0-0-2: @p range [X-axis]
# 7374-0-0-0-3: @p range [Y-axis]
# 7374-0-0-0-4: @p range [Z-axis]
# 7374-0-0-0-5: @p range[-X-axis]
# 7374-0-0-0-6: @p range[-Y-axis]
# 7374-0-0-0-7: @p range[-Z-axis]
# 7374-0-0-0-8: spawn range
# 7374-0-0-0-9: interaction entity
# (0x7374 = 29556)
