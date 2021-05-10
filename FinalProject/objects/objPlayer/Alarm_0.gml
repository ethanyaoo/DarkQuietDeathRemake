if (flashlightOn == true)
{
	if (flashlightBattery > 0) flashlightBattery -= 1;
	
	alarm[0] = room_speed;
}
else if (flashlightOn == false)
{
	if (flashlightBattery < 10) flashlightBattery += 1;
	if (flashlightBattery == 10) flashlightCharging = false;
	alarm[0] = room_speed;
}