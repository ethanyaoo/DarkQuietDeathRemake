keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check_pressed(vk_down);

responseSelected += (keyDown - keyUp);

lerpProgress += (1 - lerpProgress) / 50;
x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

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

if (keyboard_check_pressed(vk_enter))
{
	var textLength = string_length(_text);
	
	if (index >= textLength)
	{
		if (responses[0] != -1)
		{
			with (originInstance)
			{
				DialogueResponses(other.responseScripts[other.responseSelected]);
			}
		}
		
		instance_destroy();
		
		if (instance_exists(objTextboxQueued))
		{
			with (objTextboxQueued)
			{
				ticket--;
			}
		}
		else
		{
			with (objPlayer)
			{
				state = lastState;
			}
		}
	}
	else
	{
		if (index > 2)
		{
			text_displayed = _text;
			index = textLength;
		}
	}
}