execute \
  unless items entity @s weapon.mainhand *[custom_data~{st: {}}] \
  unless score #state st.var matches 0 \
  run function st:state/idle/enter
execute \
  if items entity @s weapon.mainhand *[custom_data~{st: {}}] \
  if score #state st.var matches 0 \
  run function st:state/prime/enter

execute \
  if score #state st.var matches 1 \
  run function st:state/prime/tick
execute \
  if score #state st.var matches 2 \
  run function st:state/edit/tick
