if (place_meeting(x+hsp, y, obj_draggable)) {
    var block = instance_place(x+hsp, y, obj_draggable) {
        with (block) {
            scr_move(obj_small.hsp/2,0)
        }
        hsp /= 2
    }
}
