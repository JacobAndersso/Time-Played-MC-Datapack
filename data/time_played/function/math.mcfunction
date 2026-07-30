scoreboard players add @s tp_ticks_played_afk 0
scoreboard players add @s tp_ticks_played_bonus 0

scoreboard players operation @s tp_minutes_played_total = @s tp_ticks_played_total
scoreboard players operation @s tp_minutes_played_total += @s tp_ticks_played_bonus
scoreboard players operation @s tp_minutes_played_total /= 1200 tp_constants

scoreboard players operation @s tp_minutes_played_afk = @s tp_ticks_played_afk
scoreboard players operation @s tp_minutes_played_afk /= 1200 tp_constants

scoreboard players operation @s tp_minutes_played_filtered = @s tp_ticks_played_total
scoreboard players operation @s tp_minutes_played_filtered -= @s tp_ticks_played_afk
scoreboard players operation @s tp_minutes_played_filtered += @s tp_ticks_played_bonus
scoreboard players operation @s tp_minutes_played_filtered /= 1200 tp_constants

scoreboard players operation @s tp_hours_played_filtered = @s tp_minutes_played_filtered
scoreboard players operation @s tp_hours_played_filtered /= 60 tp_constants
