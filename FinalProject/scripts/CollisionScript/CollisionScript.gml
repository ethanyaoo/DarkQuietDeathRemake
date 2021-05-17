// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CollisionScript()
{
	var _collision = false;
	
	if (place_meeting(x, y, objEnemy))
	{
		audio_stop_sound(sndMonsterShort);
		global.gameOver = true;
		room_goto(Room3);
	}
	else if (place_meeting(x, y, objBattery))
	{
		audio_play_sound(sndCollectKey, 10, false);
		flashlightBattery += 10;
		
		if (flashlightBattery > 100) flashlightBattery = 100;
		
		var batteryInst = instance_place(x, y, objBattery);
		
		with (batteryInst)
		{
			instance_destroy();
		}
	}
	else
	{
		if (place_meeting(x + hSpeed, y, objSolid))
		{
			//x -= hSpeed;
			//x -= hSpeed;
			//if (sign(hSpeed) == 1) x += hSpeed;
			hSpeed = 0;
			_collision = true;
		}
		
		x += hSpeed;
		
		if (place_meeting(x, y + vSpeed, objSolid)) 
		{
			//y -= vSpeed;
			//y -= vSpeed;
			//if (sign(vSpeed) == 1) y += vSpeed;
			vSpeed = 0;
			_collision = true;
		}
		
		y += vSpeed;
	}
	
	return _collision;
}