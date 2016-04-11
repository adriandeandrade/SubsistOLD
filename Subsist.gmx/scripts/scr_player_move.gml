///scr_player_move()
scr_get_keyboard_inputs();

image_speed = 0;
movement = movement.idle;

//var xaxis = (right - left);
//var yaxis = (down - up);

if(xaxis != 0 or yaxis != 0) {
    image_speed = 0.15;
    movement = movement.run;
    
    //Check direction
    var dir = point_direction(0, 0, xaxis, yaxis);
    face = floor(dir / 90);
    show_debug_message(face);
    //Move the player  
    x += xaxis * spd;
    y += yaxis * spd * .9;
}




