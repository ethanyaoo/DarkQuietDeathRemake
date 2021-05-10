/// @description Insert description here
// You can write your code in this editor

global.gamePaused = false;

surface_resize(application_surface, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

var _bw = browser_width;
var _vh = browser_height;

//if (_bw > camera_get_view_width(view_camera[0]) || _bh > camera_get_view_width(view_camera[0]))
//{
//window_set_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
//}