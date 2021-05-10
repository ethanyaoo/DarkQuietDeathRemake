// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShroudClearGridSetup(sightRadius, gridSize)
{
	if (gridSize mod 2 == 0)
	{
		gridSize++;
	}
	
	var tempGrid = ds_grid_create(gridSize, gridSize);
	
	var center = gridSize div 2;
	
	if (sightRadius > center + 1)
	{
		sightRadius = center + 1;
	}
	
	for (var _x = 0; _x < gridSize; _x++)
	{
		for (var _y = 0; _y < gridSize; _y++)
		{
			var _dist = point_distance(center, center, _x, _y);
			
			if (_dist <= sightRadius)
			{
				tempGrid[# _x, _y] = 0;
			}
			else
			{
				tempGrid[# _x, _y] = 1;
			}
		}
	}
	
	return tempGrid;
}