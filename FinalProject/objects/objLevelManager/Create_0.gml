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
	for (_x = 1; _x < _width - 1; _x++)
	{
		if (_grid[# _x, _y] != FLOOR)
		{
			var _wallTop = _grid[# _x, _y - 1] == VOID;
			var _wallLeft = _grid[# _x - 1, _y] == VOID;
			var _wallRight = _grid[# _x + 1, _y] == VOID;
			var _wallBot = _grid[# _x, _y + 1] == VOID;
			
			var tileIndex = NORTH * _wallTop + WEST * _wallLeft + EAST * _wallRight + SOUTH * _wallBot + 1;
			
			if (tileIndex == 1)
			{
				_grid[# _x, _y] = FLOOR;
			}
		}
	}
}

for (var _y = 1; _y < _height - 1; _y++)
{
	for (var _x = 1; _x < _width - 1; _x++)
	{
		if (_grid[# _x, _y] == FLOOR)
		{
			var _wallTop = _grid[# _x, _y - 1] == VOID;
			var _wallLeft = _grid[# _x - 1, _y] == VOID;
			var _wallRight = _grid[# _x + 1, _y] == VOID;
			var _wallBot = _grid[# _x, _y + 1] == VOID;
			
			if (_wallTop)
			{
				instance_create_layer(_x * 16, (_y - 1) * 16, "Level", objWallTop);
			}
			
			if (_wallLeft)
			{
				instance_create_layer((_x - 1) * 16, _y * 16, "Level", objWall);
			}
			
			if (_wallRight)
			{
				instance_create_layer((_x + 1) * 16, _y * 16, "Level", objWall);
			}
			
			if (_wallBot)
			{
				instance_create_layer(_x * 16, (_y + 1) * 16, "Level", objWall);
			}
		}
	}
}

for (var _y = 1; _y < _height - 1; _y++)
{
	for (var _x = 1; _x < _width - 1; _x++)
	{
		if (_grid[# _x, _y] == FLOOR)
		{
			var _wallTopLeft = _grid[# _x - 1, _y - 1] == VOID;
			var _wallTopRight = _grid[# _x + 1, _y - 1] == VOID;
			var _wallBotLeft = _grid[# _x - 1, _y + 1] == VOID;
			var _wallBotRight = _grid[# _x + 1, _y + 1] == VOID;
			
			if (_wallTopLeft)
			{
				instance_create_layer((_x - 1) * 16, (_y - 1) * 16, "Level", objWall);
			}
			
			if (_wallTopRight)
			{
				instance_create_layer((_x + 1) * 16, (_y - 1) * 16, "Level", objWall);
			}
			
			if (_wallBotLeft)
			{
				instance_create_layer((_x - 1) * 16, (_y + 1) * 16, "Level", objWall);
			}
			
			if (_wallBotRight)
			{
				instance_create_layer((_x + 1) * 16, (_y + 1) * 16, "Level", objWall);
			}
		}
	}
}

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
			
			tilemap_set(wallMapID, 129, _x, _y);
			//instance_create_layer(_x * 16, _y * 16, "Level", objFloor);
		}
	}
}




















