scr_input();
image_speed = 0.3;
//React to inputs
move = left_key + right_key;
hsp = move * msp;
//Jumping
if(jump_key && curjump < maxjumps) {
    vsp = jump_key * -jsp;
    curjump++;
}
if (vsp < 10) {
    vsp += grav;
} 
//Gray Shift
if(shift_key) {
    colorbool = !colorbool;
    if(colorbool) {
        sprite_index = spr_runner_w;
        color = "white";
    }
    else {
        sprite_index = spr_runner_b;
        color = "black";
    }
}

//Pick color every step
if(colorbool) {
    background_colour = c_black;
    sprite_index = spr_runner_w;
    color = "white";
    //white collisions
    if (place_meeting(x+hsp, y, obj_w)) {
        while (!place_meeting(x+sign(hsp), y, obj_w)) {
            x += sign(hsp);
        }
        hsp = 0;
    }
    if (place_meeting(x, y+vsp, obj_w)) {
        while (!place_meeting(x, y+sign(vsp), obj_w)) {
            y += sign(vsp);
        }
        vsp = 0;
        curjump = 0;
    }
    
}
else {
    background_colour = c_white;
    sprite_index = spr_runner_b;
    color = "black";
    //white collisions
    if (place_meeting(x+hsp, y, obj_b)) {
        while (!place_meeting(x+sign(hsp), y, obj_b)) {
            x += sign(hsp);
        }
        hsp = 0;
    }
    if (place_meeting(x, y+vsp, obj_b)) {
        while (!place_meeting(x, y+sign(vsp), obj_b)) {
            y += sign(vsp);
    }
        vsp = 0;
        curjump = 0;
    }    
}
//Applying speed to spr_player
x += hsp
y += vsp

//room reset
if(up_key_pressed) {
    //room_restart();
}
