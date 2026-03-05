if (place_meeting(x,y,obj_cat)){
	obj_cat.movespeedH = 0;
	obj_cat.movespeedV = 0;
	killcat = true;

}


if (killcat){
	obj_cat.x += 4.8;
	obj_cat.image_xscale -= 0.05;
	if (obj_cat.image_xscale<=0){
		instance_destroy(obj_cat);
		killcat = false;
	}
}