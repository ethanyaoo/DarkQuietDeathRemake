/// @description Insert description here
// You can write your code in this editor
draw_self();

if (keyboard_check(vk_space) && (distance_to_object(objNPC1) < 5) && holdKey == false)
{
	instance_create_layer(x - 55, y - 75, "Instances_1", objTextbox);
	
	objTextbox.textbox = "txtNPC10";
}
else if (keyboard_check(vk_space) && (distance_to_object(objNPC1) < 5) && holdKey == true)
{
	instance_create_layer(x - 55, y - 75, "Instances_1", objTextbox);
	
	objTextbox.textbox = "txtNPC11";
}
if (keyboard_check(vk_space) && (distance_to_object(objNPC2) < 5))
{
	instance_create_layer(x - 55, y - 75, "Instances_1", objTextbox);
	
	objTextbox.textbox = "txtNPC20";
}