#> adiscs:check_item

# Store into storage
data modify storage k.temp:temp item set from entity @s Item
execute summon armor_stand run function adiscs:check_item_id
data remove storage k.temp:temp item

execute if score .success .temp matches 1 run kill @s

scoreboard objectives remove .temp