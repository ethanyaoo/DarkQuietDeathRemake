// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MovementScript()
{
	hspeed = 0;
	vspeed = 0;
	
	if (keyboard_check(ord("A")))
	{
		hspeed = -1;
		
		sprite_index = sprPlayerRight;
		image_xscale = -0.5;
	}
	if (keyboard_check(ord("D")))
	{
		hspeed = 1;
		
		sprite_index = sprPlayerRight;
		image_xscale = 0.5;
	}
	if (keyboard_check(ord("W")))
	{
		vspeed = -1;
		
		sprite_index = sprPlayerUp;
	}
	if (keyboard_check(ord("S")))
	{
		vspeed = 1;
		
		sprite_index = sprPlayerDown;
	}
	
	if (hspeed == 0 && vspeed == 0)
	{
		image_index = 0;
	}
}