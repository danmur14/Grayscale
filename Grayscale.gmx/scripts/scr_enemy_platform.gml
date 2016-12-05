if(dir == "right") {
    if(place_free(x + 6, y + 1)) {
        dir = "left";
    }
    else if(place_meeting(x + 1, y, obj_surface_parent)) {
        dir = "left";
    }
    else {
        phy_position_x += 1;
        image_xscale = 1;
    }   
}
else if(dir == "left"){
    if(place_free(x - 6, y + 1)) {
        dir = "right";   
    }
    else if(place_meeting(x - 1, y, obj_surface_parent)) {
        dir = "right";
    }
    else {
        phy_position_x -= 1;
        image_xscale = -1;
    }   
}


