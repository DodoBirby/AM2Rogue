draw_sprite(sprite_index, image_index, round(x), round(y))
event_inherited()
with (shield1)
    draw_self()
if (instance_exists(oCharacter) && collision_line(x, y, (oCharacter.x - 1), (oCharacter.y - 16), oSolid, false, true) == -4)
    draw_sprite(sRamulkenEye, floor(((point_direction(x, y, (oCharacter.x - 1), (oCharacter.y - 16)) + 22.5) / 45)), round(x), (round(y) + 1))
