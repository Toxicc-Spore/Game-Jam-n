with (global.dragid){
	x = mouse_x;
	y = mouse_y;
	move_snap(64,64);
}

if (mouse_check_button_released(mb_left)){
	global.dragid = noone;
	instance_destroy();
}