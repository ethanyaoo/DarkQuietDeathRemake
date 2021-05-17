if (keyboard_check(ord("p")))
{
	global.gamePaused = true;
}

if (!global.gamePaused)
{
	if (global.gameOver == true)
	{
		global.gameOver = false;
		audio_stop_all();
		room_restart();
	}
}