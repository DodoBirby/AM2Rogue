if (global.roommap == -1)
    global.roommap = ds_map_create()
else
    ds_map_clear(global.roommap)
A1_randomise()
A2_randomise()
