// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawSliceBoxStretched(sprBox, x1, y1, x2, y2, imgIndex)
{
	var _size = sprite_get_width(sprBox) / 3;
	var _x1 = x1;
	var _x2 = x2;
	var _y1 = y1;
	var _y2 = y2;
	var _index = imgIndex;
	var _w = x2 - x1;
	var _h = y2 - y1;
	
	draw_sprite_part_ext(sprBox, _index, _size, _size, 1, 1, _x1 + _size, _y1 + _size, _w - (_size * 2), _h - (_size * 2), c_white, 1);
	
	draw_sprite_part(sprBox, _index, 0, 0, _size, _size, _x1, _y1);
	draw_sprite_part(sprBox, _index, _size * 2, 0, _size, _size, _x1 + _w - _size, _y1);
	draw_sprite_part(sprBox, _index, 0, _size * 2, _size, _size, _x1, _y1 + _h - _size);
	draw_sprite_part(sprBox, _index, _size * 2, _size * 2, _size, _size, x1 + _w - _size, y1 + _h - _size);
	
	draw_sprite_part_ext(sprBox, _index, 0, _size, _size, 1, _x1, _y1 + _size, 1, _h - (_size * 2), c_white, 1);
	draw_sprite_part_ext(sprBox, _index, _size * 2, _size, _size, 1, _x1 + _w - _size, _y1 + _size, 1, _h - (_size * 2), c_white, 1);
	draw_sprite_part_ext(sprBox, _index, _size, 0, 1, _size, _x1 + _size, _y1, _w - (_size * 2), 1, c_white, 1);
	draw_sprite_part_ext(sprBox, _index, _size, _size * 2, 1, _size, _x1 + _size, _y1 + _h - (_size), _w - (_size * 2), 1, c_white, 1);
}