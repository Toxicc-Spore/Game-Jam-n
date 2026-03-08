global.testing = false;
global.targetroom = noone;
global.levelcomplete = false;

enum FACING {
	UP = 0,
	RIGHT = 1,
	DOWN = 2,
	LEFT = 3
}

//each of these numbers is the frame on the animation
enum HeadEmote {
	Normal = 0,
	Win = 1,
	Lose = 2
}

room_goto(Titlescreen);
