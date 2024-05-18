#> adiscs:check_item_id

# Set mainhand
data modify entity @s ShowArms set value 1b
data modify entity @s HandItems[0] set from storage k.temp:temp item

# Check
scoreboard objectives add .temp dummy
execute store result score .success .temp if predicate adiscs:disc

data modify entity @s Silent set value 1b

kill @s