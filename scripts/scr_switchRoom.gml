a = clamp(a + (fade * 0.05),0,1)

rm = argument0;

if (a==1) {
    fade = -1
    if rm=="next" {
        room_goto_next();
    } else {
        room_goto(argument0)
    }
}

if (a == 0) && (fade == -1) {
    instance_destroy()
}

col = make_colour_rgb(0, 159, 223)
draw_set_color(col)
draw_set_alpha(a)
draw_rectangle(view_xview[0], view_yview[0], view_xview[0]+view_wview[0], view_yview[0]+view_hview[0],0)
draw_set_alpha(1)
