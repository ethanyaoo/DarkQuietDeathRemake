randomize();

_width = room_width div CELL_WIDTH;
_height = room_height div CELL_HEIGHT;

//_width = 10;
//_height = 10;

_grid = ds_grid_create(_width, _height);

ds_grid_set_region(_grid, 0, 0, _width, _height, VOID);

// Create Controls

//var _controllerX = _width div 2;
//var _controllerY = _height div 2;
//var _controllerDir = irandom(3);

//var _steps = 600; // How many floor tiles

//var _dirChangeChance = 1;

//_direction = [[1, 0], [-1, 0], [0, 1], [0, -1]];

_direction = ds_list_create();

goUp = {
	a : 0,
	b : 1
}
goDown = {
	a : 0,
	b : -1
}
goLeft = {
	a : -1,
	b : 0
}
goRight = {
	a : 1,
	b : 0
}

ds_list_add(_direction, goUp);
ds_list_add(_direction, goDown);
ds_list_add(_direction, goLeft);
ds_list_add(_direction, goRight);

wallTop = false;
wallBottom = false;
wallLeft = false;
wallRight = false;


function InitializeMap()
{
	for (var i = 0; i < _height; i++)
	{
		for (var j = 0; j < _width; j++)
		{
			_grid[# j, i] = 1;
		}
	}
	
	show_debug_message("InitializeMap");
}

function PlaceRandomBattery()
{
	var randX = irandom(_width - 1);
	var randY = irandom(_height - 1);
	
	if (_grid[# randX, randY] == 0)
	{
		if (!place_meeting((CELL_WIDTH / 2) + (randX * SECTION_WIDTH), (CELL_HEIGHT / 2) + (randY * SECTION_HEIGHT), objBattery))
		{
			instance_create_layer((CELL_WIDTH / 2) + (randX * SECTION_WIDTH), (CELL_HEIGHT / 2) + (randY * SECTION_HEIGHT), "Items", objBattery);
		}
	}
}

function PlaceFPC()
{
	for (var _y = 0; _y < _height - 1; _y++)
	{
		for (var _x = 0; _x < _width - 1; _x++)
		{
			if (_grid[# _x, _y] == 0)
			{
				instance_create_layer((CELL_WIDTH / 2) + (_x * SECTION_WIDTH), (CELL_HEIGHT / 2) + (_y * SECTION_HEIGHT), "Level", objPlayer);
				instance_create_layer((CELL_WIDTH / 2) + (_x * SECTION_WIDTH), (CELL_HEIGHT / 2) + (_y * SECTION_HEIGHT), "Level", objNPC1);
				return;
			}
		}
	}
}

function PlaceEnemy()
{
	var randX = irandom(_width - 1);
	var randY = irandom(_height - 1);
	
	if (_grid[# randX, randY] == 0)
	{
		if (!place_meeting((CELL_WIDTH / 2) + (randX * SECTION_WIDTH), (CELL_HEIGHT / 2) + (randY * SECTION_HEIGHT), objBattery))
		{
			instance_create_layer((CELL_WIDTH / 2) + (randX * SECTION_WIDTH), (CELL_HEIGHT / 2) + (randY * SECTION_HEIGHT), "Items", objEnemy);
		}
	}
}

function AddRoom(count, minSize, maxSize)
{
	for (var c = 0; c < count; c++)
	{
		var startX = random_range(3, _width - 3);
		var startY = random_range(3, _height - 3);
		
		var roomWidth = random_range(minSize, maxSize);
		var roomHeight = random_range(minSize, maxSize);
		
		for (var i = startX; i < _width - 3 && i < startX + roomWidth; i++)
		{
			for (var j = startY; j < _height - 3 && j < startY + roomHeight; j++)
			{
				_grid[# i, j] = 0;
			}
		}
	}
	
	show_debug_message("AddRoom");
}

global.recurCount = 0;

function Generate()
{
	/*
	for (i = 0; i < _height; i++)
	{
		for (j = 0; j < _width; j++)
		{
			if (irandom(100) < 50)
			{
				_grid[# j, i] = 0; 
			}
		}
	}
	
	show_debug_message("Generate");
	
	*/
	
	show_debug_message("Generate");
	GenerateNext(random_range(1, _width - 1), random_range(1, _height - 1));
}

function GenerateNext(_x, _y)
{
	//show_debug_message("GenerateNext " + string(global.recurCount));
	global.recurCount += 1;
	
	if (countSquareNeighbors(_x, _y) >= 2)
	{
		return;
	}
	
	_grid[# _x, _y] = 0;
	
	ds_list_shuffle(_direction);
	
	GenerateNext(_x + _direction[| 0].a, _y + _direction[| 0].b);
	GenerateNext(_x + _direction[| 1].a, _y + _direction[| 1].b);
	GenerateNext(_x + _direction[| 2].a, _y + _direction[| 2].b);
	GenerateNext(_x + _direction[| 3].a, _y + _direction[| 3].b);
}

function DrawGrid()
{
	var arrStraightV = [
						5, 0, 5,
						1, 0, 1,
						5, 0, 5];
	
	var arrStraightH = [
						5, 1, 5,
						0, 0, 0,
						5, 1, 5];
	
	var arrCrossroad = [
						1, 0, 1,
						0, 0, 0,
						1, 0, 1];
						
	var arrCornerBL = [
						5, 0, 1,
						1, 5, 0,
						5, 1, 5];
						
	var arrCornerBR = [
						1, 0, 5,
						0, 5, 1,
						5, 1, 5];
						
	var arrCornerTL = [
						5, 1, 5,
						1, 5, 0,
						5, 0, 1];
						
	var arrCornerTR = [
						5, 1, 5,
						0, 5, 1,
						1, 0, 5];
						
	var arrTJunctU = [
						1, 0, 1,
						0, 0, 0,
						5, 1, 5];
						
	var arrTJunctD = [
						5, 1, 5,
						0, 0, 0,
						1, 0, 1];
						
	var arrTJunctR = [
						5, 0, 1,
						1, 0, 0,
						5, 0, 1];
						
	var arrTJunctL = [
						1, 0, 5,
						0, 0, 1,
						1, 0, 5];
						
	var arrDeadendL = [
						5, 1, 5,
						0, 0, 1,
						5, 1, 5];
						
	var arrDeadendR = [
						5, 1, 5,
						1, 0, 0,
						5, 1, 5];
						
	var arrDeadendU = [
						5, 1, 5,
						1, 0, 1,
						5, 0, 5];
						
	var arrDeadendD = [
						5, 0, 5,
						1, 0, 1,
						5, 1, 5];
						
	//CreateMazeSection(0, 0, STRAIGHT_H);
	var yOffset = 32
	
	for (var _y = 0; _y < _height; _y++)
	{
		var xOffset = 32;
		
		for (var _x = 0; _x < _width; _x++)
		{	
			if (_grid[# _x, _y] == 1)
			{
				//instance_create_layer(_x * TILE_SIZE, _y * TILE_SIZE, "Level", objWallTop);
				//CreateMazeSection(_x, _y, xOffset, yOffset, STRAIGHT_V);
			}
			else if (searchMaze(_x, _y, arrStraightV))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, STRAIGHT_V);
			}
			else if (searchMaze(_x, _y, arrStraightH))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, STRAIGHT_H);
			}
			else if (searchMaze(_x, _y, arrCrossroad))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, CROSSROAD);
			}
			else if (searchMaze(_x, _y, arrCornerBL))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, CORNER_BL);
			}
			else if (searchMaze(_x, _y, arrCornerBR))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, CORNER_BR);
			}
			else if (searchMaze(_x, _y, arrCornerTL))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, CORNER_TL);
			}
			else if (searchMaze(_x, _y, arrCornerTR))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, CORNER_TR);
			}
			else if (searchMaze(_x, _y, arrTJunctU))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, T_JUNCT_U);
			}
			else if (searchMaze(_x, _y, arrTJunctD))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, T_JUNCT_D);
			}
			else if (searchMaze(_x, _y, arrTJunctR))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, T_JUNCT_R);
			}
			else if (searchMaze(_x, _y, arrTJunctL))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, T_JUNCT_L);
			}
			else if (searchMaze(_x, _y, arrDeadendL))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, DEADEND_L);
			}
			else if (searchMaze(_x, _y, arrDeadendR))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, DEADEND_R);
			}
			else if (searchMaze(_x, _y, arrDeadendD))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, DEADEND_D);
			}
			else if (searchMaze(_x, _y, arrDeadendU))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, DEADEND_U);
			}
			else if (_grid[# _x, _y] == 0 && (countSquareNeighbors(_x, _y) > 1 && countDiagonalNeighbors(_x, _y) >= 1 ||
												countSquareNeighbors(_x, _y) >= 1 && countDiagonalNeighbors(_x, _y) > 1))
			{
				CreateMazeSection(_x, _y, xOffset, yOffset, FLOOR_SECTION);
				
				locateWalls(_x, _y);
				
				if (wallTop && wallLeft) // Bug occasionally occurs with searchMaze not working correctly and if statements used as quick fix 
				{							// RETURN TO FIX
					CreateMazeSection(_x, _y, xOffset, yOffset, CORNER_TL);
				}
				else if (wallTop && wallRight)
				{
					CreateMazeSection(_x, _y, xOffset, yOffset, CORNER_TR);
				}
				else if (wallBottom && wallLeft)
				{
					CreateMazeSection(_x, _y, xOffset, yOffset, CORNER_BL);
				}
				else if (wallBottom && wallRight)
				{
					CreateMazeSection(_x, _y, xOffset, yOffset, CORNER_BR);
				}
				else
				{
					if (wallTop)
					{
						CreateMazeSection(_x, _y, xOffset, yOffset, WALL_PIECE_T);
					}
				
					if (wallBottom)
					{
						CreateMazeSection(_x, _y, xOffset, yOffset, WALL_PIECE_B);
					}
				
					if (wallRight)
					{
						CreateMazeSection(_x, _y, xOffset, yOffset, WALL_PIECE_R);
					}
				
					if (wallLeft)
					{
						CreateMazeSection(_x, _y, xOffset, yOffset, WALL_PIECE_L);
					}
				}
			}
			else
			{
				show_debug_message("X: " + string(_x) + " Y: " + string(_y) + " CountSquare: " + string(countSquareNeighbors(_x, _y)) + " CountDiag: " + string(countDiagonalNeighbors(_x, _y)));
				CreateMazeSection(_x, _y, xOffset, yOffset, FLOOR_SECTION);
			}
			
			xOffset += 64;
		}
		
		yOffset += 64;
	}
}
		
function locateWalls(_x, _y)
{
	wallTop = false;
	wallBottom = false;
	wallLeft = false;
	wallRight = false;
	
	if (_x <= 0 || _x >= _width - 1 || _y <= 0 || _y >= _height - 1)
	{
		if (_x > 0)
		{
			if (_grid[# _x - 1, _y] == 1)
			{
				wallLeft = true;
			}
		}
		else
		{
			wallLeft = true;
		}
		
		if (_x < _width - 1)
		{
			if (_grid[# _x + 1, _y] == 1)
			{
				wallRight = true;
			}
		}
		else
		{
			wallRight = true;
		}
		
		if (_y > 0)
		{
			if (_grid[# _x, _y - 1] == 1)
			{
				wallBottom = true;
			}
		}
		else
		{
			wallBottom = true;
		}
		
		if (_y < _height - 1)
		{
			if (_grid[# _x, _y + 1] == 1)
			{
				wallTop = true;
			}
		}
		else
		{
			wallTop = true;
		}
		
		return;
	}
	
	if (_grid[# _x, _y + 1] == 1)
	{
		wallTop = true;
	}
	if (_grid[# _x, _y - 1] == 1)
	{
		wallBottom = true;
	}
	if (_grid[# _x - 1, _y] == 1)
	{
		wallLeft = true;
	}
	if (_grid[# _x + 1, _y] == 1)
	{
		wallRight = true;
	}
}
		
function searchMaze(col, row, pattern)
{
	var count = 0;
	var pos = 0; 
	
	for (var _y = 1; _y > -2; _y--)
	{
		for (var _x = -1; _x < 2; _x++)
		{
			if (col + _x >= 0 && row + _y >= 0 && col + _x <= _width - 1 && row + _y <= _height - 1)
			{
				if (pattern[pos] == _grid[# col + _x, row + _y] || pattern[pos] == 5)
				{
					count++;
				}
			}
			else
			{
				if (col + _x == -1 || row + _y == -1 || col + _x >= _width - 1 || row + _y >= _height - 1)
				{
					if (pattern[pos] == 1 || pattern[pos] == 5)
					{
						count++;
					}
				}
			}
			
			pos++;
		}
	}
	
	return (count == 9);
}
		
function countSquareNeighbors(_x, _y)
{
    var count = 0;

    if (_x <= 0 || _x >= _width - 1 || _y <= 0 || _y >= _height - 1) return 5;
	if (_grid[# _x - 1, _y] == 0) count++;
	if (_grid[# _x + 1, _y] == 0) count++;
	if (_grid[# _x, _y - 1] == 0) count++;
	if (_grid[# _x, _y + 1] == 0) count++;

    return count;
}	
		
function countDiagonalNeighbors(_x, _y)
{
    var count = 0;

    if (_x <= 0 || _x >= _width - 1 || _y <= 0 || _y >= _height - 1) return 5;
	if (_grid[# _x - 1, _y - 1] == 0) count++;
	if (_grid[# _x - 1, _y + 1] == 0) count++;
	if (_grid[# _x + 1, _y - 1] == 0) count++;
	if (_grid[# _x + 1, _y + 1] == 0) count++;
	
    return count;
}

function countAllNeighbors(_x, _y)
{
    return countSquareNeighbors(_x, _y) + countDiagonalNeighbors(_x, _y);
}
		
InitializeMap();
Generate();
AddRoom(3, 4, 5);
DrawGrid();
PlaceFPC();

for (var i = 0; i < 10; i++)
{
	//PlaceRandomBattery();
}

PlaceEnemy();

backgroundMusic = audio_play_sound(sndCreepyBackground, 10, true);
		




		
		
		
		
		
		