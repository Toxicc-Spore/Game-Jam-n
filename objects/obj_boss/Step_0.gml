if (mouse_check_button_pressed(mb_left)){
	instance_create(round((mouse_x - 32) / 64) * 64 + 32, round((mouse_y - 32) / 64) * 64 + 32,obj_flingbox);	
}
