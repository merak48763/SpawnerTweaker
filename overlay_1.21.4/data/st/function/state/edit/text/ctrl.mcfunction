execute \
  if score #selected_param st.var matches 0 \
  if score #locale st.var matches 0 \
  run data modify storage st:text root append value '{"text": "[@p range]", "color": "yellow"}'
execute \
  if score #selected_param st.var matches 0 \
  if score #locale st.var matches 1 \
  run data modify storage st:text root append value '{"text": "[觸發範圍]", "color": "yellow"}'
execute \
  unless score #selected_param st.var matches 0 \
  if score #locale st.var matches 0 \
  run data modify storage st:text root append value '{"text": "@p range", "color": "white"}'
execute \
  unless score #selected_param st.var matches 0 \
  if score #locale st.var matches 1 \
  run data modify storage st:text root append value '{"text": "觸發範圍", "color": "white"}'

execute \
  if score #selected_param st.var matches 1 \
  if score #locale st.var matches 0 \
  run data modify storage st:text root append value '{"text": "[Spawn range]", "color": "yellow"}'
execute \
  if score #selected_param st.var matches 1 \
  if score #locale st.var matches 1 \
  run data modify storage st:text root append value '{"text": "[生成範圍]", "color": "yellow"}'
execute \
  unless score #selected_param st.var matches 1 \
  if score #locale st.var matches 0 \
  run data modify storage st:text root append value '{"text": "Spawn range", "color": "white"}'
execute \
  unless score #selected_param st.var matches 1 \
  if score #locale st.var matches 1 \
  run data modify storage st:text root append value '{"text": "生成範圍", "color": "white"}'

execute \
  if score #selected_param st.var matches 2 \
  if score #locale st.var matches 0 \
  run data modify storage st:text root append value '{"text": "[Spawn count]", "color": "yellow"}'
execute \
  if score #selected_param st.var matches 2 \
  if score #locale st.var matches 1 \
  run data modify storage st:text root append value '{"text": "[生成數量]", "color": "yellow"}'
execute \
  unless score #selected_param st.var matches 2 \
  if score #locale st.var matches 0 \
  run data modify storage st:text root append value '{"text": "Spawn count", "color": "white"}'
execute \
  unless score #selected_param st.var matches 2 \
  if score #locale st.var matches 1 \
  run data modify storage st:text root append value '{"text": "生成數量", "color": "white"}'
