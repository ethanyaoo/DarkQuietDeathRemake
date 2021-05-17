// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateChase()
{
	des_x = target.x;
	des_y = target.y;
	
	_dir = point_direction(x, y, des_x, des_y);
	
	if (_dir > 90.0 && _dir < 270.0)
	{
		image_xscale = -0.5;
	}
	else
	{
		image_xscale = 0.5;
	}
	
	if(point_distance(x,y,des_x,des_y) <= 60)
	{
		state = ENEMY_STATE.ATTACK;
		at_location = false;
	}
	else if (point_distance(x, y, des_x, des_y) >= 300)
	{
		at_location = false;
		state = ENEMY_STATE.WANDER;
	}

	if (at_location)
	{
		curr_wait_time += 1;
		if curr_wait_time >= wait_at_location 
		{
			//getDestination();
			curr_wait_time = 0;
			at_location = false;
		} 
	}

	if (mp_grid_path(PATH_GRID, path, x, y, des_x, des_y, true))
	{
		mp_grid_add_instances(PATH_GRID, objWall, true);
		path_start(path, mspd, path_action_stop, false);
	}
}