room_order = [roo_puzzle_tutorial1, roo_puzzle_tutorial2, roo_puzzle_1, roo_puzzle_2]
in_puzzle_room = false
current_room = 0

next_room = function() {
	current_room++
	if current_room >= array_length(room_order) {
		room_fadeto(roo_levelselect) // change to win room when made
	} else {
		room_fadeto(room_order[current_room])
	}
}

set_room = function(_room) {
	if room_exists(_room) {
		room_fadeto(_room)
	}
}