#> adiscs:sort_mode

# Kill items
execute as @e[type=item,distance=..2] at @s run function adiscs:check_item

# if no chest/barrel
execute unless block ~ ~1 ~ #adiscs:container run function adiscs:assign_disc

# If chest/barrel
execute if block ~ ~1 ~ #adiscs:container run function adiscs:retrieve_disc