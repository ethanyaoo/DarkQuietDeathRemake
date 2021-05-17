/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_space) && (room == Room0))
{
	room_goto(Room1);
}
else if (keyboard_check(vk_space) && (room == Room3))
{
	audio_stop_all();
	room_goto(Room0);
}