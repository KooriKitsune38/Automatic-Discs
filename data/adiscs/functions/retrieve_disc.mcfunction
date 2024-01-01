#> adiscs:retrieve_disc

# Remove disc
data remove block ~ ~ ~ RecordItem

# Assign from container
item replace block ~ ~ ~ container.0 from block ~ ~1 ~ container.0

# Prepend slot 0
data merge entity @s {data:{Items:[],PlaceHolder:{id:"",Count:1b}}}
data modify entity @s data.Items set from block ~ ~1 ~ Items

execute positioned ~ ~1 ~ run function adiscs:shuffle_discs