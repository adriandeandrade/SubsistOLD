///scr_pickup_hotbar(item, amount)
with(obj_inventory) {
    for(var it = 0; it < argument1; it++) {
        var i = scr_hotbar_find_slot(argument0); // finds empty slot for 1 item
        
        if(i != -1) {
            scr_hotbar_add_item(i, argument0, 1);
        } else {
            return argument1 - it;
        }
    }
}

return 0;
