// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAnimateScript()
{	
	image_xscale = 0.75;
	image_yscale = 0.75;
	
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
	
	var _direction = CARD_DIRECTION;
	
	if (direction == 0)
	{
		_direction = 4;
	}
	
	var _frames = sprite_get_number(sprite_index) / 4;

	image_index = localFrame + (_direction * _frames);

	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

	// If anim loops on next step
	if (localFrame >= _frames)
	{
		//animationEnd = true;
		localFrame -= _frames;
	}
	else
	{
		//animationEnd = false;
	}
}