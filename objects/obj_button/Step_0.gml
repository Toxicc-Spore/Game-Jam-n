if (global.testing == false){
	pressed = false;
	image_index = 0;
}

if (place_meeting(x,y,obj_cat)){
	pressed = true;
	image_index = 1;
}