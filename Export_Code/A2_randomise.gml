leftdoor = ds_list_create()
rightdoor = ds_list_create()
access = ds_list_create()
ds_list_add(leftdoor, 112032)
ds_list_add(leftdoor, 112630)
ds_list_add(rightdoor, 112388)
ds_list_add(rightdoor, 113152)
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
ds_list_add(leftdoor, 111768)
ds_list_add(leftdoor, 111770)
ds_list_add(rightdoor, 110056)
ds_list_add(rightdoor, 110058)
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
ds_list_add(access, 110055)
ds_list_add(access, 110049)
ds_list_add(access, 110050)
ds_list_add(access, 110054)
ds_list_add(access, 110051)
ds_list_add(leftdoor, 110141)
ds_list_add(leftdoor, 110746)
ds_list_add(leftdoor, 110050)
ds_list_add(leftdoor, 110201)
ds_list_add(leftdoor, 110264)
ds_list_add(leftdoor, 110173)
ds_list_add(leftdoor, 110054)
ds_list_add(leftdoor, 110796)
ds_list_add(leftdoor, 110869)
ds_list_add(leftdoor, 111054)
ds_list_add(leftdoor, 111186)
ds_list_add(leftdoor, 111580)
ds_list_add(leftdoor, 111533)
ds_list_add(leftdoor, 111581)
ds_list_add(leftdoor, 111275)
ds_list_add(leftdoor, 110051)
ds_list_add(rightdoor, 110055)
ds_list_add(rightdoor, 110489)
ds_list_add(rightdoor, 110200)
ds_list_add(rightdoor, 110263)
ds_list_add(rightdoor, 110172)
ds_list_add(rightdoor, 110049)
ds_list_add(rightdoor, 110794)
ds_list_add(rightdoor, 111050)
ds_list_add(rightdoor, 111183)
ds_list_add(rightdoor, 110869)
ds_list_add(rightdoor, 111242)
ds_list_add(rightdoor, 111532)
ds_list_add(rightdoor, 111187)
ds_list_add(rightdoor, 111649)
ds_list_add(rightdoor, 111241)
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
    ds_map_add(global.roommap, door1, door2)
    ds_map_add(global.roommap, door2, door1)
}
ds_list_destroy(leftdoor)
ds_list_destroy(rightdoor)
ds_list_destroy(access)
