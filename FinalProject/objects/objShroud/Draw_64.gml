if (FOG_ON)
{
	var cwidth = camera_get_view_width(view_camera[0]);
	var cheight = camera_get_view_height(view_camera[0]);
	
	var _camX = camera_get_view_x(view_camera[0])//+ (cwidth / 2);
	var _camY = camera_get_view_y(view_camera[0])//+ (cheight / 2);
	
	var _posX = _camX div gridSize;
	var _posY = _camY div gridSize;
	
	var _offX = (_posX * gridSize) - _camX;
	var _offY = (_posY * gridSize) - _camY;
	
	draw_set_color(c_black);
	
	for (var r = -2; r < camCellWidth; r++)
	{
		for (var c = -2; c < camCellHeight; c++)
		{
			var s = 0;
			
			if (_posX + r >= 0 && _posX + r <= (RESOLUTION_W div gridSize) && _posY + c >= 0 && _posY + c <= (RESOLUTION_H div gridSize))
			{
				s = shroudGrid[# _posX + r, _posY + c];
			}
			else
			{
				s = 1;
			}
			
			if (s > 0)
			{
				draw_set_alpha(s);

				var rx = (r * gridSize) + _offX;
				var ry = (c * gridSize) + _offY;
				
				draw_rectangle(rx, ry, rx + (gridSize), ry + (gridSize), false);
			}
		}
	}
	
	draw_set_alpha(1);
}

draw_set_font(fntTextbox);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(camera_get_view_width(view_camera[0]) / 2, 0, string(minutes) + ":" + string(seconds));
if (instance_exists(objPlayer))
{
	draw_text(camera_get_view_width(view_camera[0]) / 2, 20, "Flashlight Battery: " + string(objPlayer.flashlightBattery));
}