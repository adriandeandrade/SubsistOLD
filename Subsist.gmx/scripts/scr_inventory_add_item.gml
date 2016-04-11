///scr_inventory_add_item(slotx, sloty, itemprevious, item amount)
if(inventory_slot[argument0, argument1] == noone) {
    inventory_slot[argument0, argument1] = argument2;
    inventory_slot_n[argument0, argument1] += argument3;
} else if(inventory_slot[argument0, argument1] == argument2) {
    inventory_slot[argument0, argument1] = argument2;
    inventory_slot_n[argument0, argument1] += argument3;
} else {
    return argument3;
}

if(inventory_slot_n[argument0, argument1] > inventory_slot_max)
{
    overBy = inventory_slot_n[argument0, argument1] - inventory_slot_max;
    inventory_slot_n[argument0, argument1] = inventory_slot_max;
    
    return overBy;
}
else {
    return 0;
}
