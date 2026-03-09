room_array = [];
icon_array = [];
name_array = [];
hovernumber = 0;

add_level(roo_puzzle_test1, spr_level1_icon, "Testroom");
add_level(roo_puzzle_tutorial1, spr_level1_icon, "Tutorial");
add_level(roo_credits, spr_level1_icon, "Credits");
add_level(roo_puzzle_1, spr_level1_icon, "Level 1");
add_level(roo_puzzle_2, spr_level1_icon, "Level 2");

function add_level(_level, icon, name){
	array_push(room_array, _level);
	array_push(icon_array, icon);
	array_push(name_array, name);
}
