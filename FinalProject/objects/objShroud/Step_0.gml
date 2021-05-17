if (global.gameOver == false)
{
	if (global.seconds >= 60)
	{
		global.seconds = 0;
		global.minutes += 1;
	}
}

ds_grid_clear(shroudGrid, 1);