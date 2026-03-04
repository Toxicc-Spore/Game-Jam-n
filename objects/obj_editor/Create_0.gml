gridsize = 64;
ObjectArray = [];
ObjectAmountArray = [];
ObjectSpriteArray = [];
villain_taunttext = "Error!";
real_taunttext = "";
textspeed = 3;
text_i = 1;
alarm[0] = textspeed;

if (room == puzzle_test1){
	editor_addobject(obj_flingbox_right, spr_box_right, 3);
	editor_addobject(obj_flingbox_left, spr_box_left, 1);
	editor_addobject(obj_flingbox_up, spr_box_up, 1);
	editor_addobject(obj_flingbox_down, spr_box_down, 1);
	villain_taunttext = "Ho Ho! Im the bad guy!\nCan you beat my evil\ntest room!?";
}





function editor_addobject(object, sprite, amount){
	array_push(ObjectArray,object);
	array_push(ObjectSpriteArray,sprite);
	array_push(ObjectAmountArray,amount);
}
