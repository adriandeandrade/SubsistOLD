///scr_pickup_inventory(item, amount)
with(obj_inventory) {
    for(var it = 0; it < argument1; it++) {
        var i = scr_inventory_find_slot(argument0, false);
        var j = scr_inventory_find_slot(argument0, true);
        
        if(i != -1) {
            scr_inventory_add_item(i, j, argument0, 1);
        }
        else {
            return argument1 - it;
        }
    }
}

return 0;
