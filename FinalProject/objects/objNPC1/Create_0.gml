event_inherited();

path = path_add()
mspd = 0.5;
wait_at_location = room_speed;
curr_wait_time = 0;

at_location = false;

function getDestination()
{
	des_x = x;
	des_y = y;
	
	randomize();
	
	randNum = irandom(3);
	
	if (randNum == 0)
	{
		des_x += irandom(10);
	}
	else if (randNum == 1)
	{
		des_y += irandom(10);
	}
	else if (randNum == 2)
	{
		des_x -= irandom(10);
	}
	else if (randNum == 3)
	{
		des_y -= irandom(10);
	}
}

getDestination()
