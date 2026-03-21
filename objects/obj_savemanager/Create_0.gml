
ini_open("SaveFile.ini")
//load options
global.volume = ini_read_real("Options", "Volume", 100);

//level complete status
global.levelcomplete[0] = ini_read_real("Complete Status", "Level1", 0);


ini_close();



//apply options
audio_master_gain(global.volume/100);