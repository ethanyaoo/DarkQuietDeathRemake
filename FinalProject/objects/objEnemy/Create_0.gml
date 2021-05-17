event_inherited();

state = ENEMY_STATE.WANDER;

enemyChaseRadius = 100;

image_xscale = 0.5;
image_yscale = 0.5;

roarTimer = 5;

alarm[0] = room_speed * roarTimer;

monsterRoarEmitter = audio_emitter_create();

path = path_add()
//mp_grid_add_instances(PATH_GRID, objWall, true);
mspd = 0.5;
distanceTravel = 30;
wait_at_location = room_speed;
curr_wait_time = 0;

at_location = false;

function getDestination()
{
	des_x = x;
	des_y = y;
	
	dir = point_direction(x, y, xstart, ystart) + irandom_range(-45, 45);
	
	des_x = x + lengthdir_x(distanceTravel, dir);
	des_y = y + lengthdir_y(distanceTravel, dir);
}

getDestination()