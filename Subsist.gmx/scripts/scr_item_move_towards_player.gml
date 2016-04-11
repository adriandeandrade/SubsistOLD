///scr_item_move_towards_player
range = 15;
itemspd = 3;
if(canPickup) {
    if(distance_to_point(obj_player.x, obj_player.y)) <= range {
        move_towards_point(obj_player.x, obj_player.y, itemspd);
    } else {
        speed = 0;
    }
}    
    
    
    

