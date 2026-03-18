room_array = [];
icon_array = [];
name_array = [];
hovernumber = 0;

add_level(room_puzzle_test1, spr_placeholder_icon, "Testroom");
add_level(room_puzzle_tutorial1, spr_placeholder_icon, "Tutorial");
add_level(room_credits, spr_placeholder_icon, "Credits");
add_level(room_puzzle_1, spr_level1_icon, "Level 1");
add_level(room_puzzle_2, spr_placeholder_icon, "Level 2");
add_level(room_puzzle_3, spr_placeholder_icon, "Level 3");
add_level(room_puzzle_4, spr_placeholder_icon, "Level 4");

function add_level(_level, icon, name){
	array_push(room_array, _level);
	array_push(icon_array, icon);
	array_push(name_array, name);
}
