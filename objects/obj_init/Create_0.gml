global.testing = false;
global.targetroom = noone;
global.levelcomplete = false;
global.paused = false;

// btw, enums dont need assignments unless its different than 0, 1, 2, etc. But i like numbers :drool:
enum FACING {
	UP,
	RIGHT,
	DOWN,
	LEFT
}

//each of these numbers is the frame on the animation
enum HeadEmote {
	Normal,
	Win,
	Lose
}

room_goto(room_titlescreen);
