scr_input();
image_speed = 0.3;
//React to inputs
move = left_key + right_key;
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
    if (place_meeting(x+2, y-2, obj_w)) {
        while (!place_meeting(x, y, obj_w)) {
            x += 2;
        }
        hsp = -2;
    }
    else {
        hsp = move * msp;
    }
    
    if (place_meeting(x-1, y+vsp, obj_w)) {
        while (!place_meeting(x, y+sign(vsp), obj_w)) {
            y += sign(vsp);
        }
        vsp = 0;
        curjump = 0;
    }
    
    //spikes
    if (place_meeting(x+1, y, obj_spikes_w) || place_meeting(x, y+1, obj_spikes_w) || place_meeting(x+1, y+1, obj_spikes_w) || place_meeting(x-1, y+1, obj_spikes_w)) {
        state = scr_runner_death;
    }
    //inside block death
    if(place_meeting(x + 2, y, obj_w) && place_meeting(x - 2, y, obj_w) && place_meeting(x, y + 2, obj_w) && place_meeting(x, y - 2, obj_w)) {
        state = scr_runner_death;
    }
    
}
else {
    background_colour = c_white;
    sprite_index = spr_runner_b;
    color = "black";
    //black collisions
    if (place_meeting(x+2, y-2, obj_b)) {
        while (!place_meeting(x, y, obj_b)) {
            x += 2;
        }
        hsp = -2;
    }
    else {
        hsp = move * msp;
    }
    
    if (place_meeting(x-1, y+vsp, obj_b)) {
        while (!place_meeting(x, y+sign(vsp), obj_b)) {
            y += sign(vsp);
        }
        vsp = 0;
        curjump = 0;
    }
    
    //spikes
    if (place_meeting(x+1, y, obj_spikes_b) || place_meeting(x, y+1, obj_spikes_b) || place_meeting(x+1, y+1, obj_spikes_b) || place_meeting(x-1, y+1, obj_spikes_b)) {
        state = scr_runner_death;
    }
    //inside block death
    if(place_meeting(x + 2, y, obj_b) && place_meeting(x - 2, y, obj_b) && place_meeting(x, y + 2, obj_b) && place_meeting(x, y - 2, obj_b)) {
        state = scr_runner_death;
    }    
}
//Applying speed to spr_runner
x += hsp
y += vsp

//room reset
if(enter_key && instance_exists(obj_runner_test)) {
    room_goto(0);
}

//death
if(x < 0 || y > 128) {
    state = scr_runner_death;
}




