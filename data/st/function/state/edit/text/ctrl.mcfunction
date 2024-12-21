execute \
  if score #selected_param st.var matches 0 \
  run data modify storage st:text root append value '{"text": "[@p range]", "color": "yellow"}'
execute \
  unless score #selected_param st.var matches 0 \
  run data modify storage st:text root append value '{"text": "@p range", "color": "white"}'

function st:state/edit/text/separator

execute \
  if score #selected_param st.var matches 1 \
  run data modify storage st:text root append value '{"text": "[Spawn range]", "color": "yellow"}'
execute \
  unless score #selected_param st.var matches 1 \
  run data modify storage st:text root append value '{"text": "Spawn range", "color": "white"}'
