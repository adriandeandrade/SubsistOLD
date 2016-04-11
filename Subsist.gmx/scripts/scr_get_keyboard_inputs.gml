///scr_get_inputs()
var xx = keyboard_check(ord('D')) - keyboard_check(ord('A'));
var yy = keyboard_check(ord('S')) - keyboard_check(ord('W'));
var dir = point_direction(0, 0, xx, yy);

if(xx == 0 and yy == 0) {
    xaxis = 0;
    yaxis = 0;
    
} else {
    xaxis = lengthdir_x(1, dir);
    yaxis = lengthdir_y(1, dir);
}



