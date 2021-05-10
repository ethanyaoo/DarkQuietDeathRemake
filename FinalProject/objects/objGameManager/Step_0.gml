if (keyboard_check(ord("p")))
{
	global.gamePaused = true;
}

if (keyboard_check(ord("R")))
{
	audio_stop_all();
	room_restart();
}