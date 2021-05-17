if (flashlightOn == true)
{
	if (flashlightBattery > 0) flashlightBattery -= 1;
	
	alarm[0] = room_speed / 2;
}
else if (flashlightOn == false)
{
	if (flashlightBattery < 100) flashlightBattery += 1;
	if (flashlightBattery == 100) flashlightCharging = false;
	alarm[0] = room_speed;
}