if (keyboard_check(ord("p")))
{
	global.gamePaused = true;
}

if (!global.gamePaused)
{
	if (global.gameOver == true && room == Room1)
	{
		global.gameOver = false;
		global.minutes = 0;
		global.seconds = 0;
		audio_stop_all();
		room_restart();
	}
}