execute unless score @s c.has_custom_data matches 1 run function av:handling_clients/new_entry
execute if score @s c.left matches 1.. run function av:handling_clients/gu/store_uuid_as_score
execute store result storage central:temp intuuid.0 int 1 run scoreboard players get @s gu.UUID0
execute store result storage central:temp intuuid.1 int 1 run scoreboard players get @s gu.UUID1
execute store result storage central:temp intuuid.2 int 1 run scoreboard players get @s gu.UUID2
execute store result storage central:temp intuuid.3 int 1 run scoreboard players get @s gu.UUID3
function av:handling_clients/write_macro with storage central:temp intuuid