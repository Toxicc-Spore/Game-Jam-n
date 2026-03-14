if (!opened){
	if (place_meeting(x,y,obj_cat)){
		global.testing = false;
		obj_cat.do_move = false;
		instance_create(obj_cat.x,obj_cat.y,obj_explosion)
		instance_destroy(obj_cat);
	}
}

if (global.testing == false)
	opened = false;