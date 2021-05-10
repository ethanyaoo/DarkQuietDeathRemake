audio_emitter_position(monsterRoarEmitter, x, y, 0);

if (distance_to_object(objPlayer) < 500)
{
	show_debug_message("Monster Dist: " + string(distance_to_object(objPlayer)));
	audio_sound_gain(sndMonsterShort, (500 - distance_to_object(objPlayer)) / 1000, 0);
}