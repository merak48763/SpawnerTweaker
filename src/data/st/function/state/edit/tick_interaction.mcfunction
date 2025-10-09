execute if function st:state/edit/interaction/is_attacked on attacker run function st:state/edit/decrease
execute if function st:state/edit/interaction/is_interacted on target run function st:state/edit/increase

execute if function st:state/edit/interaction/is_attacked run data remove entity @s attack
execute if function st:state/edit/interaction/is_interacted run data remove entity @s interaction
