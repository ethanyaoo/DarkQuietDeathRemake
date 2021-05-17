gridSize = 16;

shroudGrid = ds_grid_create((4 * room_width) div gridSize, (4 * room_height) div gridSize);

ds_grid_clear(shroudGrid, 1);

clearGridSize = 1;

var _sow = 5;
var _soh = 5;

if ((camera_get_view_width(view_camera[0])) mod gridSize != 0) _sow++;
if ((camera_get_view_height(view_camera[0])) mod gridSize != 0) _soh++;

camCellWidth = ((camera_get_view_width(view_camera[0])) div gridSize) + _sow;
camCellHeight = ((camera_get_view_height(view_camera[0])) div gridSize) + _soh;

alarm[0] = room_speed;

/*
if (RESOLUTION_W mod gridSize != 0) _sow++;
if (RESOLUTION_H mod gridSize != 0) _soh++;

camCellWidth = (RESOLUTION_W div gridSize) + _sow;
camCellHeight = (RESOLUTION_H div gridSize) + _soh;
*/