if (touched == false) {
	with instance_create(x,y,obj_cat) {
		movement_direction = other.facing;
	}
	
	with (other){
		x = other.x;
		y = other.y;
		
		if (other.facing == FACING.LEFT)
			movement_direction = FACING.RIGHT;
			
		if (other.facing == FACING.RIGHT)
			movement_direction = FACING.LEFT;
			
		if (other.facing == FACING.UP)
			movement_direction = FACING.DOWN;
			
		if (other.facing == FACING.DOWN)
			movement_direction = FACING.UP;

	}
	
	touched = true;
}

if (!instance_position(x, y, obj_poof)) {
	instance_create(x, y, obj_poof);
	audio_play_sound(sfx_poof,1,0);	
}