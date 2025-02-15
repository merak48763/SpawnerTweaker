# Spawner active state display
$execute \
  if entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-1 glow_color_override set value 7601920
$execute \
  unless entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-1 glow_color_override set value 16711680

# Spawn area display
data modify storage st:transformation root set value { \
  scale: [0., 3., 0.], \
  left_rotation: [0., 0., 0., 1.], \
  right_rotation: [0., 0., 0., 1.], \
  translation: [0., 0., 0.] \
}
execute store result score #spawn_range st.var run data get storage st:spawner root.SpawnRange
scoreboard players operation #spawn_range st.var += #spawn_range st.var
scoreboard players add #spawn_range st.var 1
execute \
  store result storage st:transformation root.scale[0] double 1 \
  store result storage st:transformation root.scale[2] double 1 \
  run scoreboard players get #spawn_range st.var
data modify entity 7374-0-0-0-8 transformation set from storage st:transformation root

# Required range display
data modify storage st:transformation root set value { \
  scale: [0., 0., 0.], \
  left_rotation: [0., 0., 0., 1.], \
  right_rotation: [0., 0., 0., 1.], \
  translation: [0., 0., .2] \
}
execute store result storage st:transformation root.scale[0] double .0103 run data get storage st:spawner root.RequiredPlayerRange 1200
execute store result storage st:transformation root.scale[1] double .0103 run data get storage st:spawner root.RequiredPlayerRange 1200
execute store result storage st:transformation root.scale[2] double .0103 run data get storage st:spawner root.RequiredPlayerRange 1200
execute store result storage st:transformation root.translation[0] double -0.000193 run data get storage st:spawner root.RequiredPlayerRange 1200
execute store result storage st:transformation root.translation[1] double -0.001351 run data get storage st:spawner root.RequiredPlayerRange 1200
data modify entity 7374-0-0-0-2 transformation set from storage st:transformation root
data modify entity 7374-0-0-0-3 transformation set from storage st:transformation root
data modify entity 7374-0-0-0-4 transformation set from storage st:transformation root
data modify entity 7374-0-0-0-5 transformation set from storage st:transformation root
data modify entity 7374-0-0-0-6 transformation set from storage st:transformation root
data modify entity 7374-0-0-0-7 transformation set from storage st:transformation root
$execute \
  if entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-2 text set value '{"text": "⭕", "color": "dark_green"}'
$execute \
  if entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-3 text set value '{"text": "⭕", "color": "dark_green"}'
$execute \
  if entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-4 text set value '{"text": "⭕", "color": "dark_green"}'
$execute \
  if entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-5 text set value '{"text": "⭕", "color": "dark_green"}'
$execute \
  if entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-6 text set value '{"text": "⭕", "color": "dark_green"}'
$execute \
  if entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-7 text set value '{"text": "⭕", "color": "dark_green"}'
$execute \
  unless entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-2 text set value '{"text": "⭕", "color": "red"}'
$execute \
  unless entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-3 text set value '{"text": "⭕", "color": "red"}'
$execute \
  unless entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-4 text set value '{"text": "⭕", "color": "red"}'
$execute \
  unless entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-5 text set value '{"text": "⭕", "color": "red"}'
$execute \
  unless entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-6 text set value '{"text": "⭕", "color": "red"}'
$execute \
  unless entity @a[distance=..$(RequiredPlayerRange)] \
  run data modify entity 7374-0-0-0-7 text set value '{"text": "⭕", "color": "red"}'
