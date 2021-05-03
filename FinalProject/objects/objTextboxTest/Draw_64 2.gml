/// @description Insert description here
// You can write your code in this editor
//image_xscale = 0.8;
//image_yscale = 0.6;
//draw_self();

draw_set_font(fntTextbox);

draw_set_color(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

if (ds_map_exists(textMap, "NPC_" + string(npcIden) + string(value)))
{
	_text = ds_map_find_value(textMap, "NPC_" + string(npcIden) + string(value));
}
else
{
	instance_destroy();
}

if (text_length <= 0)
{
	text_length = string_length(string(_text));
}

if (index < text_length)
{
	cooldown--;
	
	if (cooldown <= 0)
	{
		index++;
		text_displayed = string_copy(_text, 1, index);
		cooldown = text_speed;
		audio_play_sound(sndTyping, 10, false);
	}
}
else if (index >= text_length)
{	
	
	if (ds_map_exists(responseMap, "NPC_" + string(npcIden) + string(value) + string(0)))
	{
		_text += "\n";
		
		firstText = ds_map_find_value(responseMap, "NPC_" + string(npcIden) + string(value) + string(0));
		secondText = ds_map_find_value(responseMap, "NPC_" + string(npcIden) + string(value) + string(1));
		
		if (responseSelected == 0)
		{
			_text += "> ";
			
			_text += firstText;
			
			_text += " <";
			
			_text += "\n";
			
			_text += secondText;
		}
		else if (responseSelected == 1)
		{
			_text += firstText;
			
			_text += "\n";
			
			_text += "> ";
			
			_text += secondText;
			
			_text += " <";
		}
	}
}

if (index < text_length)
{
	draw_text(xPos, yPos, text_displayed);
}
else if (index >= text_length)
{
	draw_text(xPos, yPos, _text);
}