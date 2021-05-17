if (!global.gamePaused)
{
	audio_emitter_position(monsterRoarEmitter, x, y, 0);

	if (distance_to_object(objPlayer) < 300)
	{
		//show_debug_message("Monster Dist: " + string(distance_to_object(objPlayer)));
		audio_sound_gain(sndMonsterShort, (300 - distance_to_object(objPlayer)) / 1200, 0);
	}
	
	if (state == ENEMY_STATE.IDLE) EnemyStateIdle();
	else if (state == ENEMY_STATE.WANDER) EnemyStateWander();
	else if (state == ENEMY_STATE.CHASE) EnemyStateChase();
	else if (state == ENEMY_STATE.ATTACK) EnemyStateAttack();
	
	depth = -bbox_bottom;
}