#> adiscs:sort_mode

# if no chest/barrel
execute unless block ~ ~1 ~ #adiscs:container run function adiscs:assign_disc

# If chest/barrel
execute if block ~ ~1 ~ #adiscs:container run function adiscs:retrieve_disc