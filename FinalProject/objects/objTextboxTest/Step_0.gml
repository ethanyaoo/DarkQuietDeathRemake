/// @description Insert description here
// You can write your code in this editor

/*
text_displayed = "";
text_length = -1;
index = 0;
cooldown = text_speed;

value += "E";

*/
keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check_pressed(vk_down);

responseSelected += (keyDown - keyUp);

var _max = array_length_1d(responses) - 1;
var _min = 0;

if (responseSelected > _max)
{
	responseSelected = _min;
}
if (responseSelected < _min)
{
	responseSelected = _max;
}

if (keyboard_check_pressed(vk_space))
{
	var textLength = string_length(_text);
	
	if (!ds_map_exists(responseMap, "NPC_" + string(npcIden) + string(value) + string(0)))
	{
		instance_destroy();
	}
	else
	{
		if (responseSelected == 0)
		{
			value += "0";
		}
		else if (responseSelected == 1)
		{
			value += "1";
		}
	}
}
			