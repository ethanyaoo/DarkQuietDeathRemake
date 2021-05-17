//Player Input

keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

if (keyLeft || keyRight || keyUp || keyDown)
{
	//audio_play_sound(sndWalk, 10, false);
}

keyInteract = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("F"));

inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
//Makes sure that player movements are valid
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

if (!global.gamePaused)
{
	if (state == "PlayerStateFree")
	{
		PlayerStateFree();
	}
	else if (state == "PlayerStateLock")
	{
		PlayerStateLock();
	}
}

if (instance_exists(objShroud))
{
	var shroudClearGridSize = objShroud.clearGridSize + ceil(flashlightBattery / 10);
	
	if ((shroudClearGridSize mod 2) == 0) shroudClearGridSize += 1;
	
	var shroudClearRadius = shroudClearGridSize / 2;
	
	shroudClearGrid = ShroudClearGridSetup(shroudClearRadius, shroudClearGridSize);
	
	var shroudClearGridSizeOff = objShroud.clearGridSize + 1;
	
	if ((shroudClearGridSizeOff mod 2) == 0) shroudClearGridSizeOff += 1;
	
	var shroudClearRadiusOff = shroudClearGridSizeOff / 2;
	
	shroudClearGridOff = ShroudClearGridSetup(shroudClearRadiusOff, shroudClearGridSizeOff);
}

depth = -bbox_bottom;
