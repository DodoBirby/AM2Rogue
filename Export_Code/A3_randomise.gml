leftdoor = ds_list_create()
rightdoor = ds_list_create()
access = ds_list_create()
ds_list_add(leftdoor, 113757)
ds_list_add(leftdoor, 113756)
ds_list_add(rightdoor, 113985)
ds_list_add(rightdoor, 120221)
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
ds_list_add(access, 120485)
ds_list_add(access, 120486)
ds_list_add(leftdoor, 120485)
ds_list_add(leftdoor, 120486)
ds_list_add(leftdoor, 120752)
ds_list_add(leftdoor, 121232)
ds_list_add(leftdoor, 121405)
ds_list_add(leftdoor, 121890)
ds_list_add(leftdoor, 122365)
ds_list_add(rightdoor, 120751)
ds_list_add(rightdoor, 120921)
ds_list_add(rightdoor, 121230)
ds_list_add(rightdoor, 121404)
ds_list_add(rightdoor, 121889)
ds_list_add(rightdoor, 121924)
ds_list_add(rightdoor, 121923)
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
ds_list_add(access, 114268)
ds_list_add(access, 114099)
ds_list_add(leftdoor, 114099)
ds_list_add(leftdoor, 114831)
ds_list_add(leftdoor, 115736)
ds_list_add(leftdoor, 116032)
ds_list_add(leftdoor, 116072)
ds_list_add(leftdoor, 116778)
ds_list_add(leftdoor, 116699)
ds_list_add(leftdoor, 116449)
ds_list_add(leftdoor, 116994)
ds_list_add(leftdoor, 117206)
ds_list_add(leftdoor, 117499)
ds_list_add(leftdoor, 117295)
ds_list_add(leftdoor, 118690)
ds_list_add(leftdoor, 119540)
ds_list_add(leftdoor, 118691)
ds_list_add(leftdoor, 118878)
ds_list_add(leftdoor, 119541)
ds_list_add(leftdoor, 119846)
ds_list_add(leftdoor, 119469)
ds_list_add(rightdoor, 114953)
ds_list_add(rightdoor, 115067)
ds_list_add(rightdoor, 116374)
ds_list_add(rightdoor, 115737)
ds_list_add(rightdoor, 116033)
ds_list_add(rightdoor, 116662)
ds_list_add(rightdoor, 116448)
ds_list_add(rightdoor, 116995)
ds_list_add(rightdoor, 117205)
ds_list_add(rightdoor, 117293)
ds_list_add(rightdoor, 117294)
ds_list_add(rightdoor, 117956)
ds_list_add(rightdoor, 118488)
ds_list_add(rightdoor, 118692)
ds_list_add(rightdoor, 118877)
ds_list_add(rightdoor, 119239)
ds_list_add(rightdoor, 119847)
ds_list_add(rightdoor, 119956)
ds_list_add(rightdoor, 119329)
ds_list_add(downdoor, 114268)
ds_list_add(downdoor, 115441)
ds_list_add(downdoor, 116375)
ds_list_add(downdoor, 119240)
ds_list_add(updoor, 115440)
ds_list_add(updoor, 115735)
ds_list_add(updoor, 116447)
ds_list_add(updoor, 119328)
