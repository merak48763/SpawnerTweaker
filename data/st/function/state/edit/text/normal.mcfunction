execute store result score #player_range st.var run data get storage st:spawner root.RequiredPlayerRange
execute store result score #spawn_range st.var run data get storage st:spawner root.SpawnRange
execute store result score #spawn_count st.var run data get storage st:spawner root.SpawnCount

execute if score #locale st.var matches 0 run data modify storage st:snbt_text root set value [ \
  {text: "@p range: ", extra: [{score: {name: "#player_range", objective: "st.var"}}]}, \
  {text: "Spawn range: ", extra: [{score: {name: "#spawn_range", objective: "st.var"}}]}, \
  {text: "Spawn count: ", extra: [{score: {name: "#spawn_count", objective: "st.var"}}]} \
]
execute if score #locale st.var matches 1 run data modify storage st:snbt_text root set value [ \
  {text: "觸發範圍：", extra: [{score: {name: "#player_range", objective: "st.var"}}]}, \
  {text: "生成範圍：", extra: [{score: {name: "#spawn_range", objective: "st.var"}}]}, \
  {text: "生成數量：", extra: [{score: {name: "#spawn_count", objective: "st.var"}}]} \
]
data modify storage st:snbt_text root[] merge value {color: "white"}

execute if score #selected_param st.var matches 0 \
  run data modify storage st:snbt_text root[0].extra[0] merge value {color: "yellow", bold: true}
execute if score #selected_param st.var matches 1 \
  run data modify storage st:snbt_text root[1].extra[0] merge value {color: "yellow", bold: true}
execute if score #selected_param st.var matches 2 \
  run data modify storage st:snbt_text root[2].extra[0] merge value {color: "yellow", bold: true}

function st:state/edit/text/normal/load_name
