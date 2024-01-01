#> adiscs:shuffle_discs

# Assign first to placeholder
data modify entity @s[tag=!.temp] data.PlaceHolder.id set from block ~ ~ ~ Items[0].id

# Tag add
tag @s add .temp

# Yeah
data modify entity @s data.Items[0].id set from block ~ ~ ~ Items[1].id
data modify entity @s data.Items append from entity @s data.Items[0]

# Remove first entry from block
data remove entity @s data.Items[0]
data remove block ~ ~ ~ Items[0]

# Repeat if block is empty
execute if data block ~ ~ ~ Items[0] run function adiscs:shuffle_discs

# Tag remove
tag @s remove .temp

# Place back items
data modify entity @s data.Items[-1].id set from entity @s data.PlaceHolder.id
data modify block ~ ~ ~ Items set from entity @s data.Items