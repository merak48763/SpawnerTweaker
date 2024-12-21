execute store result score #player_range st.var run data get storage st:spawner root.RequiredPlayerRange
execute store result score #spawn_range st.var run data get storage st:spawner root.SpawnRange

execute \
  if score #selected_param st.var matches 0 \
  run data modify storage st:text root append value '[ \
    {"text": "@p range: ", "color": "white"}, \
    {"text": "[", "color": "yellow", "extra": [ \
      {"score": {"name": "#player_range", "objective": "st.var"}}, \
      "]" \
    ]} \
  ]'
execute \
  unless score #selected_param st.var matches 0 \
  run data modify storage st:text root append value '[ \
    {"text": "@p range: ", "color": "white"}, \
    {"score": {"name": "#player_range", "objective": "st.var"}} \
  ]'

function st:state/edit/text/separator

execute \
  if score #selected_param st.var matches 1 \
  run data modify storage st:text root append value '[ \
    {"text": "Spawn range: ", "color": "white"}, \
    {"text": "[", "color": "yellow", "extra": [ \
      {"score": {"name": "#spawn_range", "objective": "st.var"}}, \
      "]" \
    ]} \
  ]'
execute \
  unless score #selected_param st.var matches 1 \
  run data modify storage st:text root append value '[ \
    {"text": "Spawn range: ", "color": "white"}, \
    {"score": {"name": "#spawn_range", "objective": "st.var"}} \
  ]'
