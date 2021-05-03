event_inherited()

if(point_distance(x,y,des_x,des_y) <= 3){
	at_location = true
}

if at_location {
	curr_wait_time += 1
	if curr_wait_time >= wait_at_location {
		getDestination()
		curr_wait_time = 0
		at_location = false
	} 
}

if mp_grid_path(PATH_GRID, path, x, y, des_x, des_y, true){
	path_start(path, mspd, path_action_stop, false)
}