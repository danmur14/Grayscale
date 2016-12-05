///scr_roll
scr_input();

if(!place_meeting(x + sign(vsp),y,obj_surface_parent)) {
        x += sign(hsp) * 3;
}

if(hsp != 0) {
    image_xscale = sign(hsp);
}
sprite_index = spr_player_roll;
image_speed = 0.2;



