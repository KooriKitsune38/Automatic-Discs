#> adiscs:as_marker

# If no jukebox, kill
execute if entity @s[tag=ad.Jukeboxed] unless block ~ ~ ~ jukebox run kill @s

# Add Jukebox
execute if entity @s[tag=!ad.Jukeboxed] run function adiscs:add_jukebox

# If IsPlaying 0b, play disc
execute unless block ~ ~ ~ jukebox{IsPlaying:1b} run function adiscs:assign_disc