musicArray = [];
musicArrayRoom = [];

add_music(roo_titlescreen, mu_titlescreen);
add_music(roo_puzzle_test1, mu_puzzle);
add_music(roo_puzzle_1, mu_puzzle);
add_music(roo_puzzle_2, mu_puzzle);

function add_music(_room, music){
	array_push(musicArray,music);
	array_push(musicArrayRoom,_room);
}
