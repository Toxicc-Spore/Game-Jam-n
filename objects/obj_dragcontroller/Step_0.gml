with (dragid){
	x = round((mouse_x - 32) / 64) * 64 + 32 + other.dragoffsetX;
	y = round((mouse_y - 32) / 64) * 64 + 32;
}

if (mouse_check_button_released(mb_left)){
	dragid = noone;
	instance_destroy();
}
