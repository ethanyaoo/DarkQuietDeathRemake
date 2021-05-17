// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateWander()
{
	if (instance_exists(objPlayer))
	{
		if (distance_to_object(objPlayer) <= enemyChaseRadius)
		{
			state = ENEMY_STATE.CHASE;
			target = objPlayer;
		}
	}
	
	if(point_distance(x,y,des_x,des_y) <= 3)
	{
		at_location = true;
	}

	if (at_location)
	{
		curr_wait_time += 1;
		if curr_wait_time >= wait_at_location 
		{
			getDestination();
			curr_wait_time = 0;
			at_location = false;
		} 
	}

	if mp_grid_path(PATH_GRID, path, x, y, des_x, des_y, true)
	{
		mp_grid_add_instances(PATH_GRID, objWall, true);
		path_start(path, mspd, path_action_stop, false);
	}
}












