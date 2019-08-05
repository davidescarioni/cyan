hsp = argument[0]
vsp = argument[1]

if (place_meeting(x+hsp, y, obj_solid)) {
    while (!place_meeting(x+sign(hsp),y,obj_solid)) {
        x+=sign(hsp)
    }
    hsp=0
}

x+=hsp

if (place_meeting(x, y+vsp, obj_solid)) {
    while (!place_meeting(x,y+sign(vsp),obj_solid)) {
        y+=sign(vsp)
    }
    vsp=0
}

if (place_meeting(x, y+vsp, obj_sea_surface) && dim=="small") {
    while (!place_meeting(x,y+sign(vsp),obj_sea_surface)) {
        y+=sign(vsp)
    }
    vsp=0
}

y+=vsp
