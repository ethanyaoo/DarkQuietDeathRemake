if (flashlightOn) 
{
	if (instance_exists(objShroud)) ShroudClearPosition(x, y);
}
else
{
	if (instance_exists(objShroud)) ShroudClearPositionOff(x, y);
}
