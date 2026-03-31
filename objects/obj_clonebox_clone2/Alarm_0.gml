touched = true;

with instance_create(x,y,obj_cat) {
	movement_direction = other.facing;
}

alarm[0] = -1;
