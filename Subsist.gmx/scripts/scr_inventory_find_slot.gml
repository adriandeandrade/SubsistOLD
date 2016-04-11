///scr_inventory_find_slot
//argument0 = item
//argument1 = false for x, true for y (you have to call it twice to get both values)

with(obj_inventory) {
    for(var i = 0; i < inventory_width; i++) {
        for(var j = 0; j < inventory_height; j++) {
            // Find a slot that contains what we want.
            if(inventory_slot[i, j] == argument0) {
                // We cannot use a "full" slot, the only exception being if there's no item here.
                if(inventory_slot_n < inventory_slot_max -1) or (argument0 == noone) {
                    if(argument1)
                        return(i)
                    else
                        return(j)
                }
            }
        }
    }
}

// if we're looking for viable slots that already contain this item and we got here, we can't find anywhere.
// instead, just return the first EMPTY slot we find.
if(argument0 != noone)
    return(scr_inventory_find_slot(noone, argument1))

return -1; // if we get HERE, the inventory is completely full and can't hold anything else.
// Always check this function doesn't just return -1 for both x and y.

// Obvious but should be stated - don't call this or scr_find_hotbar_slot repeatedly, they're intensive operations.
