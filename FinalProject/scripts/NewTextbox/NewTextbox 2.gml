// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NewTextbox(newText, newResponses)
{
	var _obj;
	
	if (instance_exists(objTextbox)) 
	{
		_obj = objTextboxQueued;
	}
	else
	{
		_obj = objTextbox;
	}
	
	with (instance_create_layer(0, 0, "Instances", _obj))
	{
		textMessage = newText;
		responses = newResponses;
		
		if (instance_exists(other))
		{
			originInstance = other.id;
		}
		else
		{
			originInstance = noone;
		}
		
		if (array_length_1d(newResponses) > 0)
		{
			for (var i  = 0; i < array_length_1d(newResponses); i++)
			{
				var _markerPos = string_pos(":", newResponses[i]);
			
				responseScripts[i] = real(string_copy(newResponses[i], 1, _markerPos - 1));
			
				responses[i] = string_delete(responses[i], 1, _markerPos);
			}
		}
		else
		{
			responses = [-1];
			responseScripts = [-1];
		}
	}
	
	
	with (objPlayer)
	{
		if (state != PlayerStateLock)
		{
			lastState = state;
			state = PlayerStateLock;
		}
	}

}