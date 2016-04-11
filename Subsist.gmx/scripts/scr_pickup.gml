// scr_pickup
// argument0 - item you picked up
// argument1 - how many of it you picked up

// try to pick things up in the hotbar first
left = scr_pickup_hotbar(argument0, argument1)

if(left > 0) {
    left = scr_pickup_inventory(argument0, argument1)
}

return left // if this ISN'T 0, some items couldn't be picked up.
