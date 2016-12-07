//Reacts to inputs
move = left_key + right_key;
hsp = move * msp;

//Max speed


//Speed at ground
if (place_meeting(x, y+1, obj_surface_parent)) {
    vsp = 0;
    if(jump_key) {
        vsp = jump_key * -jsp
    }
}    else {
        if (vsp < 10) {
            vsp += grav;
        }    
}

//Horizonal collisions
if (place_meeting(x+hsp, y, obj_surface_parent)) {
    while (!place_meeting(x+sign(hsp), y, obj_surface_parent)) {
        x += sign(hsp);
    }
    hsp = 0;
}

//Vertical collisions
if (place_meeting(x, y+vsp, obj_surface_parent)) {
    while (!place_meeting(x, y+sign(vsp), obj_surface_parent)) {
        y += sign(vsp);
    }
    vsp = 0;
}

//Applying speed to spr_player
x += hsp
y += vsp
