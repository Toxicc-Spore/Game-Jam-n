//Dragging
if (instance_position(mouse_x, mouse_y, id) && global.testing == false && room != room_puzzle_tutorial1 && (room != room_puzzle_tutorial2 || (obj_editor.current_villain_taunttext == obj_editor.villain_taunttext3 || obj_editor.current_villain_taunttext == obj_editor.villain_taunttext99))){
	if (mouse_check_button_pressed(mb_left) && room != room_puzzle_tutorial2){
		with instance_create(x,y,obj_dragcontroller)
			dragid = other.id;
	}
}

var myblahaj = noone;
with (obj_blahaj){
	if (warpto_point.id == other.id)
		myblahaj = id;
}

//destroy if in the delete zone
if (y > view_get_hport(view_camera[0])-100 && !instance_exists(obj_dragcontroller)){
	obj_editor.ObjectAmountArray[array_get_index(obj_editor.ObjectArray, obj_blahaj)] += 1;
	instance_destroy();
	audio_play_sound(sfx_delete,1,0);
	instance_destroy(myblahaj);
}
