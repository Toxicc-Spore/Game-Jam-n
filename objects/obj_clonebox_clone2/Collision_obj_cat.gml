if (touched == false) {
	with other{
		movement_direction = other.facing;
		x = other.x;
		y = other.y;
	}
	alarm[0] = 20;
	
	touched = true;
}

if (!instance_position(x, y, obj_poof)) {
	instance_create(x, y, obj_poof);
	audio_play_sound(sfx_poof,1,0);	
}
