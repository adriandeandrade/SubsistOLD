///scr_hotbar_add_item(slot, itemprevious, item amount)
if(hotbar_slot[argument0] == noone) {
    hotbar_slot[argument0] = argument1;
    hotbar_slot_n[argument0] += argument2;
} else if(hotbar_slot[argument0] == argument1) {
    hotbar_slot[argument0] = argument1;
    hotbar_slot_n[argument0] += argument2;
} else {
    return argument2;
}

if(hotbar_slot_n[argument0] > inventory_slot_max)
{
    overBy = hotbar_slot_n[argument0] - inventory_slot_max;
    hotbar_slot_n[argument0] = inventory_slot_max;
    
    return overBy;
}
else {
    return 0;
}
