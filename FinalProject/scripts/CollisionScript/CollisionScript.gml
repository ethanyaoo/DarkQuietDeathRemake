// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CollisionScript()
{
	var _collision = false;
	
	if (place_meeting(x, y, objExit))
	{
		room_restart();
	}
	else if (place_meeting(x, y, objBattery))
	{
		flashlightBattery += 2;
		
		if (flashlightBattery > 10) flashlightBattery = 10;
		
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
		
		/*
		if (place_meeting(x, y, objSolid))
		{			
			var new_x = x;
		
			for (var dist_moved = 0; dist_moved < abs(hSpeed); dist_moved++)
			{
				new_x -= sign(hSpeed);
			
				if (!place_meeting(new_x, y, objSolid))
				{
					x = new_x;
					hSpeed = 0;
					break;
				}
			}
		}
	
		if (place_meeting(x, y, objSolid))
		{
			var new_y = y;
		
			for (var dist_moved = 0; dist_moved < abs(vSpeed); dist_moved++)
			{
				new_y -= sign(vSpeed);
			
				if (vSpeed > 0)
				{
					if (!place_meeting(x, new_y, objSolid))
					{
						y = new_y;
						vSpeed = 0;
						break;
					}
				}
				else if (vSpeed < 0)
				{
					if (!place_meeting(x, new_y + 8, objSolid))
					{
						y = new_y;
						vSpeed = 0;
						break;
					}
				}
			}
		}*/
	}
	
	return _collision;
}