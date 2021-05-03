randomize();

// Load Tiles
var wallMapID = layer_tilemap_get_id("Walls");

_width = room_width div CELL_WIDTH;
_height = room_height div CELL_HEIGHT;

_grid = ds_grid_create(_width, _height);

ds_grid_set_region(_grid, 0, 0, _width, _height, VOID);

// Create Controls

var _controllerX = _width div 2;
var _controllerY = _height div 2;
var _controllerDir = irandom(3);

var _steps = 600; // How many floor tiles

var _dirChangeChance = 1;

repeat(_steps)
{
	_grid[# _controllerX, _controllerY] = FLOOR;
	
	// Randomize direction
	
	if (irandom(_dirChangeChance) == _dirChangeChance)
	{
		_controllerDir = irandom(3);
	}
	
	// Move controller
	
	var _xDir = lengthdir_x(1, _controllerDir * 90);
	var _yDir = lengthdir_y(1, _controllerDir * 90);
	
	_controllerX += _xDir;
	_controllerY += _yDir;
	
	// Make sure we do not go outside the grid
	
	if (_controllerX < 2 || _controllerX >= _width - 2)
	{
		_controllerX += -_xDir *2;
	}
	
	if (_controllerY < 2 || _controllerY >= _height - 2)
	{
		_controllerY += -_yDir * 2;
	}
}

playerSpawn = false;

for (var _y = 1; _y < _height - 1; _y++)
{
	for (var _x = 1; _x < _width - 1; _x++)
	{
		if (_grid[# _x, _y] == FLOOR)
		{
			if (playerSpawn == false)
			{
				instance_create_layer(_x * 16 + 8, _y * 16 + 24, "Level", objPlayer);
				playerSpawn = true;
			}
			
			//show_debug_message("hello");
			tilemap_set(wallMapID, 129, _x, _y);
			//instance_create_layer(_x * 16, _y * 16, "Level", objFloor);
		}
	}
}




















