if (!audio_is_playing(sndMonsterShort)) 
{
	audio_play_sound(sndMonsterShort, 8, false);
}

alarm[0] = room_speed * roarTimer;