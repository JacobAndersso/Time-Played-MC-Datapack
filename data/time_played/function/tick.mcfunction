# Requires the Vanilla Tweaks AFK Detection datapack to track AFK time.
execute as @a[team=afkDis.afk] run scoreboard players add @s tp_ticks_played_afk 1

execute as @a run function time_played:math