/// @description Insert description here
// You can write your code in this editor

image_xscale = 0.8;
image_yscale = 0.6;
draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(fntTextbox);



if (textbox == "txtNPC10")
{
	draw_text_transformed(x + 5, y + 5, "The key is some way to the", 0.25, 0.25, 0);
	draw_text_transformed(x + 5, y + 15, "east of here.", 0.25, 0.25, 0);
}
else if (textbox == "txtNPC11")
{
	draw_text_transformed(x + 5, y + 5, "Great. My friend will tell", 0.25, 0.25, 0);
	draw_text_transformed(x + 5, y + 15, "you how to escape this", 0.25, 0.25, 0);
	draw_text_transformed(x + 5, y + 25, "place.", 0.25, 0.25, 0);
}
else if (textbox == "txtNPC20")
{
	draw_text_transformed(x + 5, y + 5, "The exit is north of here,", 0.25, 0.25, 0);
	draw_text_transformed(x + 5, y + 15, "hidden behind a tree.", 0.25, 0.25, 0);
}

if (distance_to_object(objPlayer) > 100)
{
	instance_destroy(objTextbox);
}