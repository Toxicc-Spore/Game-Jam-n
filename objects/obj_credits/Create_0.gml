name_array = [];
type_array = [];

add_section("Director");
add_credit("FOOLISH");

add_section("Coding");
add_credit("Ralcactus");
add_credit("Torent");

add_section("Art");
add_credit("Purtangle");

add_section("Music");
add_credit("Purtangle");

add_section("Voice Acting");
add_credit("Villain - dabestestboi");
add_credit("Agent kitty - I DONT KNOWS");

function add_credit(_name){
	array_push(name_array, _name);
	array_push(type_array, "credit");
}

function add_section(_section){
	array_push(name_array, _section);
	array_push(type_array, "section");
}

drawy = room_height;