//image_xscale = 0.8;
//image_yscale = 0.6;
//draw_self();

DrawSliceBoxStretched(sprTextbox, x1, y1, x2, y2, 0);

draw_set_font(fntTextbox);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

_text = textMessage;

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
else if ((responses[0] != -1) && (index >= text_length))
{	
	for (var i = 0; i < array_length_1d(responses); i++)
	{
		_text += "\n\n";
		
		if (i == responseSelected)
		{
			_text += "> ";
		}
		
		_text += responses[i];
		
		if (i == responseSelected)
		{
			_text += " <";
		}
	}
}

if (index < text_length)
{
	draw_text((x1 + x2) / 2, y1 + 32, text_displayed);
	draw_set_color(c_white);
	draw_text((x1 + x2) / 2, y1 + 31, text_displayed);
}
else if (index >= text_length)
{
	draw_text((x1 + x2) / 2, y1 + 32, _text);
	draw_set_color(c_white);
	draw_text((x1 + x2) / 2, y1 + 31, _text);
}