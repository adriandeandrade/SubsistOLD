///scr_hotbar_find_slot
//argument0 = item

with(obj_inventory) {
    for(var i = 0; i < hotbar_amount; i++) {
        // find a slot holding the requested item
        if(hotbar_slot[i] = argument0) {
            // make sure that it is NOT full (if it's empty we don't bother to check)
            if(hotbar_slot_n[i] < inventory_slot_max-1) or (argument0 == noone) {
                return i;
            }
        }
    }
}

// if we're looking for viable slots that already contain this item and we got here, we can't find anywhere.
// instead, just return the first EMPTY slot we find.
if(argument0 != noone)
    return(scr_hotbar_find_slot(noone))

return -1; // if we get HERE, the hotbar is completely full and can't hold anything else.
// Always check this function doesn't just return -1.

// Obvious but should be stated - don't call this or scr_find_inventory_slot repeatedly, they're intensive operations.
