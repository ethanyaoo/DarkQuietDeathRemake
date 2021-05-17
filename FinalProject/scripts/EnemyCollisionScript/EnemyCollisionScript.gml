// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyCollisionScript()
{
	var _collision = false;
	
	if (place_meeting(x, y, objExit))
	{
		room_restart();
	}
	else
	{
		if (place_meeting(x + hSpeed, y, objSolid))
		{
			hSpeed = 0;
			_collision = true;
		}
		
		if (_collision)
		{
			x -= hSpeed * 4;
			timePassed++;
		}
		else
		{
			x += hSpeed;
		}
		
		if (place_meeting(x, y + vSpeed, objSolid)) 
		{
			show_debug_message("can't go up");
			vSpeed = 0;
			_collision = true;
		}
		
		if (_collision)
		{
			y -= vSpeed * 4;
			timePassed++;
		}
		else
		{
			y += vSpeed;
		}
	}
	
	return _collision;
}