draw_set_blend_mode(bm_add)
draw_set_color(mycolor)
draw_set_alpha((0.8 * image_alpha))
draw_line(x, y, tposx[0], tposy[0])
draw_set_alpha((0.6 * image_alpha))
draw_line(tposx[0], tposy[0], tposx[1], tposy[1])
draw_set_alpha((0.4 * image_alpha))
draw_line(tposx[1], tposy[1], tposx[2], tposy[2])
draw_set_alpha((0.2 * image_alpha))
draw_line(tposx[2], tposy[2], tposx[3], tposy[3])
draw_set_alpha((0.1 * image_alpha))
draw_line(tposx[3], tposy[3], tposx[4], tposy[4])
draw_set_alpha(1)
draw_set_blend_mode(bm_normal)