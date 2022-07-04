global.destination = ds_map_find_value(global.roommap, id)
if (global.destination != undefined)
{
    targetroom = ds_map_find_value(global.instancemap, string(global.destination))
    global.direction = direction
}
