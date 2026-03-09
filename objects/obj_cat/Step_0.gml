if (do_move){
	switch (movement_direction){
		case FACING.UP:
			y -= movespeed;
		break;
		
		case FACING.DOWN:
			y += movespeed;
		break;
		
		case FACING.LEFT:
			x -= movespeed;
			image_xscale = -1;
		break;
		
		case FACING.RIGHT:
			x += movespeed;
			image_xscale = 1;
		break;
	}
}

var is_wall = instance_place(x, y, obj_solid)

if is_wall != noone {
	alarm[0] = 1
	do_move = false;
}