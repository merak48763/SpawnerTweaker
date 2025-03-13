data modify entity @s CustomName set value {translate: "language.code"}
execute if entity @s[name=zho-Hant_TW] run scoreboard players set #locale st.var 1

kill @s
