// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAnimateScript()
{	
	image_xscale = 0.6;
	image_yscale = 0.6;
	
	var prevSprite = sprite_index;
	
	if (hSpeed != 0 || vSpeed != 0)
	{
		direction = inputDirection;
		sprite_index = sprWalk;;
	}
	else if (hSpeed == 0 && vSpeed == 0)
	{
		sprite_index = sprIdle;
	}
	
	if (prevSprite != sprite_index)
	{
		localFrame = 0;
	}
	
	if (CARD_DIRECTION == 4)
	{
		var _direction = 0;
	}
	else
	{
		var _direction = CARD_DIRECTION;
	}
	
	var _frames = sprite_get_number(sprite_index) / 4;
	
	image_index = (localFrame + (_direction * _frames));

	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
	if (sprite_index == sprWalk && (localFrame == 0.1 || localFrame == 2.0 || localFrame == 4.0 ))
	{
		audio_play_sound(sndWalk, 2, false);
	}
	
	// If anim loops on next step
	
	if (localFrame >= _frames)
	{
		localFrame = 0;
	}
}