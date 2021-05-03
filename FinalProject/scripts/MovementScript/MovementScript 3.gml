// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MovementScript()
{	
	if (keyLeft)
	{
		x += hSpeed;
	}
	if (keyRight)
	{
		x += hSpeed;
	}
	if (keyUp)
	{
		y += vSpeed;
	}
	if (keyDown)
	{
		y += vSpeed;
	}
}