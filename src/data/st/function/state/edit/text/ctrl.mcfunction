execute if score #locale st.var matches 0 run data modify storage st:snbt_text root set value [ \
  {text: "@p range"}, \
  {text: "Spawn range"}, \
  {text: "Spawn count"} \
]
execute if score #locale st.var matches 1 run data modify storage st:snbt_text root set value [ \
  {text: "觸發範圍"}, \
  {text: "生成範圍"}, \
  {text: "生成數量"} \
]
data modify storage st:snbt_text root[] merge value {color: "white", bold: false}

execute if score #selected_param st.var matches 0 \
  run data modify storage st:snbt_text root[0] merge value {color: "yellow", bold: true}
execute if score #selected_param st.var matches 1 \
  run data modify storage st:snbt_text root[1] merge value {color: "yellow", bold: true}
execute if score #selected_param st.var matches 2 \
  run data modify storage st:snbt_text root[2] merge value {color: "yellow", bold: true}
