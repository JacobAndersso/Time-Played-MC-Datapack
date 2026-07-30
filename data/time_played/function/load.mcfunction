# Total: Total time played, including AFK time.
# AFK: Time played while AFK, requires the Vanilla Tweaks AFK Detection datapack.
# Filtered: Total time played, excluding AFK time.
# Bonus: Time played as a bonus, add time via function/bonus or commands manually.

tellraw @a {"text":"Starting time tracking...","color":"yellow"}

scoreboard objectives add tp_ticks_played_total minecraft.custom:minecraft.play_time "Ticks Played (Total)"
scoreboard objectives add tp_ticks_played_afk dummy "Ticks Played (AFK)"
scoreboard objectives add tp_ticks_played_bonus dummy "Ticks Played (Bonus)"

scoreboard objectives add tp_minutes_played_total dummy "Minutes Played (Total)"
scoreboard objectives add tp_minutes_played_afk dummy "Minutes Played (AFK)"
scoreboard objectives add tp_minutes_played_filtered dummy "Minutes Played"
scoreboard objectives add tp_hours_played_filtered dummy "Hours Played"

# Create the AFK team and objectives if they don't exist (Used by the Vanilla Tweaks AFK Detection datapack)
team add afkDis.afk "AFK Players"
team modify afkDis.afk color gray

# Constants
scoreboard objectives add tp_constants dummy "Time Played Constants"
scoreboard players set 1200 tp_constants 1200
scoreboard players set 60 tp_constants 60
