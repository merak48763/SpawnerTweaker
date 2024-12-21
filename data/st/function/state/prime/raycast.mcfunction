execute \
  if block ~ ~ ~ spawner \
  run return run function st:state/prime/select_spawner

scoreboard players remove #step st.var 1
execute \
  if score #step st.var matches 1.. \
  positioned ^ ^ ^.5 \
  run function st:state/prime/raycast
