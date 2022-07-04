leftdoor = ds_list_create()
rightdoor = ds_list_create()
access = ds_list_create()
if file_exists("room.txt")
    file_delete("room.txt")
if file_exists("seed.txt")
    file_delete("seed.txt")
ds_list_add(leftdoor, 107800)
ds_list_add(leftdoor, 107661)
ds_list_add(rightdoor, 107732)
ds_list_add(rightdoor, 107733)
while (ds_list_size(leftdoor) > 0)
{
    ds_list_shuffle(leftdoor)
    ds_list_shuffle(rightdoor)
    door1 = ds_list_find_value(leftdoor, 0)
    door2 = ds_list_find_value(rightdoor, 0)
    ds_list_delete(leftdoor, 0)
    ds_list_delete(rightdoor, 0)
    ds_map_add(global.roommap, door1, door2)
    ds_map_add(global.roommap, door2, door1)
}
ds_list_add(leftdoor, 109311)
ds_list_add(leftdoor, 109308)
ds_list_add(rightdoor, 109656)
ds_list_add(rightdoor, 109468)
while (ds_list_size(leftdoor) > 0)
{
    ds_list_shuffle(leftdoor)
    ds_list_shuffle(rightdoor)
    door1 = ds_list_find_value(leftdoor, 0)
    door2 = ds_list_find_value(rightdoor, 0)
    ds_list_delete(leftdoor, 0)
    ds_list_delete(rightdoor, 0)
    ds_map_add(global.roommap, door1, door2)
    ds_map_add(global.roommap, door2, door1)
}
ds_list_add(access, 108031)
ds_list_add(access, 108032)
ds_list_add(access, 108033)
ds_list_add(access, 108034)
ds_list_add(access, 108027)
ds_list_add(leftdoor, 108031)
ds_list_add(leftdoor, 108032)
ds_list_add(leftdoor, 108034)
ds_list_add(leftdoor, 108027)
ds_list_add(leftdoor, 108285)
ds_list_add(leftdoor, 108319)
ds_list_add(leftdoor, 108379)
ds_list_add(leftdoor, 108437)
ds_list_add(leftdoor, 108445)
ds_list_add(leftdoor, 108578)
ds_list_add(leftdoor, 108490)
ds_list_add(leftdoor, 108497)
ds_list_add(leftdoor, 108656)
ds_list_add(leftdoor, 108722)
ds_list_add(rightdoor, 108033)
ds_list_add(rightdoor, 108284)
ds_list_add(rightdoor, 108314)
ds_list_add(rightdoor, 108318)
ds_list_add(rightdoor, 108381)
ds_list_add(rightdoor, 108458)
ds_list_add(rightdoor, 108577)
ds_list_add(rightdoor, 108507)
ds_list_add(rightdoor, 108510)
ds_list_add(rightdoor, 108492)
ds_list_add(rightdoor, 108618)
ds_list_add(rightdoor, 108657)
ds_list_add(rightdoor, 108091)
ds_list_add(rightdoor, 108144)
while (ds_list_size(leftdoor) > 0)
{
    ds_list_shuffle(access)
    door1 = ds_list_find_value(access, 0)
    ds_list_delete(access, 0)
    if (ds_list_find_index(leftdoor, door1) != -1)
    {
        ds_list_delete(leftdoor, ds_list_find_index(leftdoor, door1))
        dir = rightdoor
    }
    else
    {
        ds_list_delete(rightdoor, ds_list_find_index(rightdoor, door1))
        dir = leftdoor
    }
    ds_list_shuffle(dir)
    i = 0
    found = 0
    while (i < ds_list_size(dir))
    {
        checkdoor = ds_list_find_value(dir, i)
        if (ds_list_find_index(access, checkdoor) == -1)
        {
            door2 = checkdoor
            room2 = ds_map_find_value(global.instancemap, string(door2))
            ds_list_delete(dir, i)
            ds_list_delete(access, ds_list_find_index(access, door2))
            found = 1
            break
        }
        else
        {
            i += 1
            continue
        }
    }
    if (found == 0)
    {
        door2 = ds_list_find_value(dir, 0)
        room2 = ds_map_find_value(global.instancemap, string(door2))
        ds_list_delete(dir, 0)
        ds_list_delete(access, ds_list_find_index(access, door2))
    }
    file = file_text_open_append("room.txt")
    file_text_write_string(file, string(room2))
    file_text_writeln(file)
    file_text_close(file)
    for (i = 0; i < ds_list_size(leftdoor); i += 1)
    {
        check = ds_list_find_value(leftdoor, i)
        if (ds_map_find_value(global.instancemap, string(check)) == room2)
            ds_list_add(access, check)
    }
    for (i = 0; i < ds_list_size(rightdoor); i += 1)
    {
        check = ds_list_find_value(rightdoor, i)
        if (ds_map_find_value(global.instancemap, string(check)) == room2)
            ds_list_add(access, check)
    }
    fid = file_text_open_append("seed.txt")
    file_text_write_string(fid, (string(door1) + "-"))
    file_text_write_string(fid, (string(door2) + " "))
    for (i = 0; i < ds_list_size(access); i += 1)
        file_text_write_string(fid, (string(ds_list_find_value(access, i)) + " "))
    file_text_writeln(fid)
    file_text_close(fid)
    ds_map_add(global.roommap, door1, door2)
    ds_map_add(global.roommap, door2, door1)
}
ds_list_destroy(leftdoor)
ds_list_destroy(rightdoor)
ds_list_destroy(access)
