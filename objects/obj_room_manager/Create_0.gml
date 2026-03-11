room_order = [room_puzzle_1, room_puzzle_2]
in_puzzle_room = false
current_room = 0

next_room = function() {
	current_room++
	
	if current_room >= array_length(room_order)
		room_fadeto(room_levelselect) //change to win room when target is invalid
	else
		room_fadeto(room_order[current_room])
}

set_room = function(_room) {
	room_fadeto(_room);
}
