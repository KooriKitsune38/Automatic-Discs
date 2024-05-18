#> adiscs:remove_jukebox

# Drop Item
summon item ~ ~ ~ {Item:{id:"llama_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Automatic Jukebox","color":"orange","italic":false}'},EntityTag:{id:"marker",Tags:[ad.Jukebox]}}}}

# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:jukebox",Count:1b}},distance=..2,limit=1]

# Remove Jukebox
fill ~ ~ ~ ~ ~ ~ air replace jukebox

# Particle
particle block jukebox ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
playsound block.wood.break block @a ~ ~ ~ 1 1

kill @s