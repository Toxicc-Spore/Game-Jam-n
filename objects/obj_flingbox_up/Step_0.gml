if (instance_position(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)){
	global.dragid = id;
	instance_create(x,y,obj_dragcontroller);
}

if (place_meeting(x,y,obj_cat)){
	obj_cat.movespeedH = 0;
	obj_cat.movespeedV = -obj_cat.mainspeed;
}
