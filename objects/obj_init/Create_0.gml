global.testing = false;
global.targetroom = noone;
global.levelcomplete = false;
global.paused = false;

//load options
ini_open("SaveFile.ini")
global.volume = ini_read_real("Options", "Volume", 100);
audio_master_gain(global.volume/100);
ini_close();

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
