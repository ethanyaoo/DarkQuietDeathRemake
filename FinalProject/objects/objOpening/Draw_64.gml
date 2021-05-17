draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_font(fntTextbox);

if (room == Room0)
{
	draw_text(camera_get_view_width(view_camera[0])/2, (camera_get_view_height(view_camera[0])/2) - 30, "Final Project Game. Press Space to Start");
	draw_text(camera_get_view_width(view_camera[0])/2, (camera_get_view_height(view_camera[0])/2), "Press F to turn on Flashlight");
	draw_text(camera_get_view_width(view_camera[0])/2, (camera_get_view_height(view_camera[0])/2) + 30, "Press Space to interact with objects");
}
else if (room == Room3)
{
	draw_text(camera_get_view_width(view_camera[0])/2, (camera_get_view_height(view_camera[0])/2) - 30, "Game Over");
	
	if (global.seconds > 9)
	{
		draw_text(camera_get_view_width(view_camera[0])/2, (camera_get_view_height(view_camera[0])/2), "Final Time: " + string(global.minutes) + " minutes " + string(global.seconds) + " seconds");
	}
	else if (global.seconds <= 9)
	{
		draw_text(camera_get_view_width(view_camera[0])/2, (camera_get_view_height(view_camera[0])/2), "Final Time: " + string(global.minutes) + " minutes " + string(global.seconds) + " seconds");
	}
	
	draw_text(camera_get_view_width(view_camera[0])/2, (camera_get_view_height(view_camera[0])/2) + 30, "Press Space to Restart");
}