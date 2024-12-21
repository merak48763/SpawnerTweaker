# 7374-0-0-0-1
execute \
  align xyz positioned ~.5 ~.5 ~.5 \
  run summon item_display ~ ~ ~ { \
    UUID: [I; 29556,0,0,1], \
    item: {id: glass}, \
    transformation: [ \
      .9, 0., 0., 0., \
      0., .9, 0., 0., \
      0., 0., .9, 0., \
      0., 0., 0., 1. \
    ], \
    brightness: {block: 15, sky: 15}, \
    Glowing: true \
  }
# 7374-0-0-0-2
execute \
  align xyz positioned ~.5 ~.5 ~.5 \
  run summon text_display ~ ~ ~ { \
    UUID: [I; 29556,0,0,2], \
    alignment: "center", \
    text_opacity: 100, \
    background: 0, \
  }
execute as 7374-0-0-0-2 at @s run rotate @s facing ~1 ~ ~
# 7374-0-0-0-3
execute \
  align xyz positioned ~.5 ~.5 ~.5 \
  run summon text_display ~ ~ ~ { \
    UUID: [I; 29556,0,0,3], \
    alignment: "center", \
    text_opacity: 100, \
    background: 0 \
  }
execute as 7374-0-0-0-3 at @s run rotate @s facing ~ ~1 ~
# 7374-0-0-0-4
execute \
  align xyz positioned ~.5 ~.5 ~.5 \
  run summon text_display ~ ~ ~ { \
    UUID: [I; 29556,0,0,4], \
    alignment: "center", \
    text_opacity: 100, \
    background: 0 \
  }
execute as 7374-0-0-0-4 at @s run rotate @s facing ~ ~ ~1
# 7374-0-0-0-5
execute \
  align xyz positioned ~.5 ~.5 ~.5 \
  run summon text_display ~ ~ ~ { \
    UUID: [I; 29556,0,0,5], \
    alignment: "center", \
    text_opacity: 100, \
    background: 0 \
  }
execute as 7374-0-0-0-5 at @s run rotate @s facing ~-1 ~ ~
# 7374-0-0-0-6
execute \
  align xyz positioned ~.5 ~.5 ~.5 \
  run summon text_display ~ ~ ~ { \
    UUID: [I; 29556,0,0,6], \
    alignment: "center", \
    text_opacity: 100, \
    background: 0 \
  }
execute as 7374-0-0-0-6 at @s run rotate @s facing ~ ~-1 ~
# 7374-0-0-0-7
execute \
  align xyz positioned ~.5 ~.5 ~.5 \
  run summon text_display ~ ~ ~ { \
    UUID: [I; 29556,0,0,7], \
    alignment: "center", \
    text_opacity: 100, \
    background: 0 \
  }
execute as 7374-0-0-0-7 at @s run rotate @s facing ~ ~ ~-1
# 7374-0-0-0-8
execute \
  align xyz positioned ~.5 ~.5 ~.5 \
  run summon item_display ~ ~ ~ { \
    UUID: [I; 29556,0,0,8], \
    item: {id: gray_stained_glass}, \
    brightness: {block: 15, sky: 15}, \
  }

execute at @s run function st:state/edit/enter
