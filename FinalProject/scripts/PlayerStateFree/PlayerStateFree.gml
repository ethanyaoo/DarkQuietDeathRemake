// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree()
{
	//Movement
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

	MovementScript();
	CollisionScript();
	PlayerAnimateScript();
	CameraMotionScript();
	
	recoil = clamp(recoil, 0, 1);
	recoil += recoil + 1;
	
	
	if (keyInteract && (recoil > 1))
	{
		if (keyboard_check(vk_space) && (distance_to_object(objNPC1) < 5))
		{
			NewTextbox(". . . ", ["1:Hello", "0:(Leave)"]);
			recoil = 0;
		}
		else if (keyboard_check(vk_space) && (distance_to_object(objNPC2) < 5))
		{
			NewTextbox("*Key is poking out of his pocket*");
			recoil = 0;
		}	
		else if (keyboard_check(ord("F") && (distance_to_object(objNPC2) < 5)))
		{
			show_debug_message("stealing key");
			StealItem();
			recoil = 0;
		}
	}
	
	
	/*
	
	if (keyInteract && (recoil > 1))
	{
		var _interactX = lengthdir_x(10, direction);
		var _interactY = lengthdir_y(10, direction);
		
		activate = instance_position(x + _interactX, y + _interactY, objPEntity);
		
		recoil = 0;
		
		if (activate == noone || activate.entityActivateScript == -1)
		{
		}
		else
		{
			ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
			
			if (activate == noone || activate.entityNPC)
			{
				with (activate)
				{
					direction = point_direction(x, y, other.x, other.y);
					image_index = CARD_DIRECTION;
				}
			}
		}
		
	}
	*/
}