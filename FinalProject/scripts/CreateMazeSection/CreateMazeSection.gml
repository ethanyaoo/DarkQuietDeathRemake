// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateMazeSection(_x, _y, xOffset, yOffset, sectionType)
{
	switch(sectionType)
	{
		case STRAIGHT_V:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2) * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallLeft;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst2.sprite_index = sprWallLeft;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst3.sprite_index = sprWallLeft;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst4.sprite_index = sprWallLeft;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallLeft;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2) * 16 + yOffset, "Walls", objFloor);
			wallInst6.sprite_index = sprFloorBase;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst10.sprite_index = sprFloorBase;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2) * 16 + yOffset, "Walls", objFloor);
			wallInst11.sprite_index = sprFloorBase;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst15.sprite_index = sprFloorBase;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2) * 16 + yOffset, "Walls", objFloor);
			wallInst16.sprite_index = sprFloorBase;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst20.sprite_index = sprFloorBase;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallRight;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst22.sprite_index = sprWallRight;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst23.sprite_index = sprWallRight;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst24.sprite_index = sprWallRight;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallRight;
			
			break;
			
		case STRAIGHT_H:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallTop;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst2.sprite_index = sprFloorBase;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst3.sprite_index = sprFloorBase;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst4.sprite_index = sprFloorBase;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallBottom;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst6.sprite_index = sprWallTop;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst10.sprite_index = sprWallBottom;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst11.sprite_index = sprWallTop;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst15.sprite_index = sprWallBottom;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst16.sprite_index = sprWallTop;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst20.sprite_index = sprWallBottom;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallTop;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst22.sprite_index = sprFloorBase;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst23.sprite_index = sprFloorBase;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst24.sprite_index = sprFloorBase;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallBottom;
			
			break;
			
		case CROSSROAD:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallTopLeft;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst2.sprite_index = sprFloorBase;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst3.sprite_index = sprFloorBase;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst4.sprite_index = sprFloorBase;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallBottomLeft;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst6.sprite_index = sprFloorBase;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst10.sprite_index = sprFloorBase;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst11.sprite_index = sprFloorBase;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst15.sprite_index = sprFloorBase;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst16.sprite_index = sprFloorBase;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst20.sprite_index = sprFloorBase;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallTopRight;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst22.sprite_index = sprFloorBase;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst23.sprite_index = sprFloorBase;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst24.sprite_index = sprFloorBase;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallBottomRight;
			
			break;
			
		case CORNER_BL:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallLeft;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst2.sprite_index = sprWallLeft;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst3.sprite_index = sprWallLeft;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst4.sprite_index = sprWallLeft;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallBottomLeft;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst6.sprite_index = sprFloorBase;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst10.sprite_index = sprWallBottom;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst11.sprite_index = sprFloorBase;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst15.sprite_index = sprWallBottom;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst16.sprite_index = sprFloorBase;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst20.sprite_index = sprWallBottom;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst21.sprite_index = sprFloorBase;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst22.sprite_index = sprFloorBase;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst23.sprite_index = sprFloorBase;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst24.sprite_index = sprFloorBase;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallBottom;
			
			break;
			
		case CORNER_BR:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst1.sprite_index = sprFloorBase;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst2.sprite_index = sprFloorBase;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst3.sprite_index = sprFloorBase;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst4.sprite_index = sprFloorBase;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallBottom;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst6.sprite_index = sprFloorBase;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst10.sprite_index = sprWallBottom;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst11.sprite_index = sprFloorBase;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst15.sprite_index = sprWallBottom;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst16.sprite_index = sprFloorBase;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst20.sprite_index = sprWallBottom;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallRight;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst22.sprite_index = sprWallRight;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst23.sprite_index = sprWallRight;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst24.sprite_index = sprWallRight;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallBottomRight;
			
			break;
			
		case CORNER_TL:
			
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallTopLeft;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst2.sprite_index = sprWallLeft;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst3.sprite_index = sprWallLeft;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst4.sprite_index = sprWallLeft;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallLeft;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst6.sprite_index = sprWallTop;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst10.sprite_index = sprFloorBase;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst11.sprite_index = sprWallTop;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst15.sprite_index = sprFloorBase;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst16.sprite_index = sprWallTop;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst20.sprite_index = sprFloorBase;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallTop;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst22.sprite_index = sprFloorBase;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst23.sprite_index = sprFloorBase;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst24.sprite_index = sprFloorBase;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst25.sprite_index = sprFloorBase;
			
			break;
			
		case CORNER_TR:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallTop;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst2.sprite_index = sprFloorBase;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst3.sprite_index = sprFloorBase;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst4.sprite_index = sprFloorBase;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst5.sprite_index = sprFloorBase;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst6.sprite_index = sprWallTop;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst10.sprite_index = sprFloorBase;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst11.sprite_index = sprWallTop;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst15.sprite_index = sprFloorBase;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst16.sprite_index = sprWallTop;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst20.sprite_index = sprFloorBase;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallTopRight;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst22.sprite_index = sprWallRight;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst23.sprite_index = sprWallRight;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst24.sprite_index = sprWallRight;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallRight;
			
			break;
			
		case T_JUNCT_D:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallTop;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst2.sprite_index = sprFloorBase;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst3.sprite_index = sprFloorBase;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst4.sprite_index = sprFloorBase;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst5.sprite_index = sprFloorBase;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst6.sprite_index = sprWallTop;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst10.sprite_index = sprFloorBase;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst11.sprite_index = sprWallTop;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst15.sprite_index = sprFloorBase;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst16.sprite_index = sprWallTop;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst20.sprite_index = sprFloorBase;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallTop;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst22.sprite_index = sprFloorBase;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst23.sprite_index = sprFloorBase;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst24.sprite_index = sprFloorBase;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst25.sprite_index = sprFloorBase;
			
			break;
			
		case T_JUNCT_U:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst1.sprite_index = sprFloorBase;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst2.sprite_index = sprFloorBase;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst3.sprite_index = sprFloorBase;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst4.sprite_index = sprFloorBase;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallBottom;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst6.sprite_index = sprFloorBase;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst10.sprite_index = sprWallBottom;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst11.sprite_index = sprFloorBase;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst15.sprite_index = sprWallBottom;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst16.sprite_index = sprFloorBase;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst20.sprite_index = sprWallBottom;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst21.sprite_index = sprFloorBase;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst22.sprite_index = sprFloorBase;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst23.sprite_index = sprFloorBase;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst24.sprite_index = sprFloorBase;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallBottom;
			
			break;
			
		case T_JUNCT_R:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallLeft;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst2.sprite_index = sprWallLeft;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst3.sprite_index = sprWallLeft;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst4.sprite_index = sprWallLeft;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallLeft;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst6.sprite_index = sprFloorBase;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst10.sprite_index = sprFloorBase;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst11.sprite_index = sprFloorBase;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst15.sprite_index = sprFloorBase;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst16.sprite_index = sprFloorBase;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst20.sprite_index = sprFloorBase;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst21.sprite_index = sprFloorBase;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst22.sprite_index = sprFloorBase;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst23.sprite_index = sprFloorBase;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst24.sprite_index = sprFloorBase;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst25.sprite_index = sprFloorBase;
			
			break;
			
		case T_JUNCT_L:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst1.sprite_index = sprFloorBase;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst2.sprite_index = sprFloorBase;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst3.sprite_index = sprFloorBase;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst4.sprite_index = sprFloorBase;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst5.sprite_index = sprFloorBase;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst6.sprite_index = sprFloorBase;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst10.sprite_index = sprFloorBase;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst11.sprite_index = sprFloorBase;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst15.sprite_index = sprFloorBase;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst16.sprite_index = sprFloorBase;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst20.sprite_index = sprFloorBase;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallRight;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst22.sprite_index = sprWallRight;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst23.sprite_index = sprWallRight;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst24.sprite_index = sprWallRight;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallRight;
			
			break;
			
		case DEADEND_L:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallTop;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst2.sprite_index = sprFloorBase;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst3.sprite_index = sprFloorBase;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst4.sprite_index = sprFloorBase;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallBottom;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst6.sprite_index = sprWallTop;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst10.sprite_index = sprWallBottom;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst11.sprite_index = sprWallTop;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst15.sprite_index = sprWallBottom;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst16.sprite_index = sprWallTop;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst20.sprite_index = sprWallBottom;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallTopRight;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst22.sprite_index = sprWallRight;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst23.sprite_index = sprWallRight;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst24.sprite_index = sprWallRight;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallBottomRight;
			
			break;
			
		case DEADEND_R:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallTopLeft;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst2.sprite_index = sprWallLeft;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst3.sprite_index = sprWallLeft;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst4.sprite_index = sprWallLeft;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallBottomLeft;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst6.sprite_index = sprWallTop;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst10.sprite_index = sprWallBottom;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst11.sprite_index = sprWallTop;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst15.sprite_index = sprWallBottom;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst16.sprite_index = sprWallTop;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst20.sprite_index = sprWallBottom;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallTop;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst22.sprite_index = sprFloorBase;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst23.sprite_index = sprFloorBase;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst24.sprite_index = sprFloorBase;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallBottom;
			
			break;
			
		case DEADEND_D:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallTopLeft;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst2.sprite_index = sprWallLeft;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst3.sprite_index = sprWallLeft;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst4.sprite_index = sprWallLeft;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallLeft;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst6.sprite_index = sprWallTop;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst10.sprite_index = sprFloorBase;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst11.sprite_index = sprWallTop;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst15.sprite_index = sprFloorBase;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst16.sprite_index = sprWallTop;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objFloor);
			wallInst20.sprite_index = sprFloorBase;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallTopRight;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst22.sprite_index = sprWallRight;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst23.sprite_index = sprWallRight;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst24.sprite_index = sprWallRight;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallRight;
			
			break;
			
		case DEADEND_U:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallLeft;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst2.sprite_index = sprWallLeft;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst3.sprite_index = sprWallLeft;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst4.sprite_index = sprWallLeft;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallBottomLeft;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst6.sprite_index = sprFloorBase;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst10.sprite_index = sprWallBottom;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst11.sprite_index = sprFloorBase;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst15.sprite_index = sprWallBottom;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objFloor);
			wallInst16.sprite_index = sprFloorBase;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Walls", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst20.sprite_index = sprWallBottom;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallRight;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst22.sprite_index = sprWallRight;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst23.sprite_index = sprWallRight;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst24.sprite_index = sprWallRight;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallBottomRight;
			
			break;
			
		case FLOOR_SECTION:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Floor", objFloor);
			wallInst1.sprite_index = sprFloorBase;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Floor", objFloor);
			wallInst2.sprite_index = sprFloorBase;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Floor", objFloor);
			wallInst3.sprite_index = sprFloorBase;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Floor", objFloor);
			wallInst4.sprite_index = sprFloorBase;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Floor", objFloor);
			wallInst5.sprite_index = sprFloorBase;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Floor", objFloor);
			wallInst6.sprite_index = sprFloorBase;
			
			var wallInst7 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Floor", objFloor);
			wallInst7.sprite_index = sprFloorBase;
			
			var wallInst8 = instance_create_layer((_x - 1) * 16 + xOffset, _y * 16 + yOffset, "Floor", objFloor);
			wallInst8.sprite_index = sprFloorBase;
			
			var wallInst9 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Floor", objFloor);
			wallInst9.sprite_index = sprFloorBase;
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Floor", objFloor);
			wallInst10.sprite_index = sprFloorBase;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Floor", objFloor);
			wallInst11.sprite_index = sprFloorBase;
			
			var wallInst12 = instance_create_layer((_x) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Floor", objFloor);
			wallInst12.sprite_index = sprFloorBase;
			
			var wallInst13 = instance_create_layer((_x) * 16 + xOffset, _y * 16 + yOffset, "Floor", objFloor);
			wallInst13.sprite_index = sprFloorBase;
			
			var wallInst14 = instance_create_layer((_x) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Floor", objFloor);
			wallInst14.sprite_index = sprFloorBase;
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Floor", objFloor);
			wallInst15.sprite_index = sprFloorBase;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Floor", objFloor);
			wallInst16.sprite_index = sprFloorBase;
			
			var wallInst17 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Floor", objFloor);
			wallInst17.sprite_index = sprFloorBase;
			
			var wallInst18 = instance_create_layer((_x + 1) * 16 + xOffset, _y * 16 + yOffset, "Floor", objFloor);
			wallInst18.sprite_index = sprFloorBase;
			
			var wallInst19 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Floor", objFloor);
			wallInst19.sprite_index = sprFloorBase;
			
			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Floor", objFloor);
			wallInst20.sprite_index = sprFloorBase;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Floor", objFloor);
			wallInst21.sprite_index = sprFloorBase;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Floor", objFloor);
			wallInst22.sprite_index = sprFloorBase;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Floor", objFloor);
			wallInst23.sprite_index = sprFloorBase;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Floor", objFloor);
			wallInst24.sprite_index = sprFloorBase;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Floor", objFloor);
			wallInst25.sprite_index = sprFloorBase;
			
			break;
			
		case WALL_PIECE_B:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallPieceTop;
			
			// X - 1
			
			var wallInst6 = instance_create_layer((_x - 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst6.sprite_index = sprWallPieceTop;
			
			// CENTER X
			
			var wallInst11 = instance_create_layer((_x) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst11.sprite_index = sprWallPieceTop;
			
			// X + 1
			
			var wallInst16 = instance_create_layer((_x + 1) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst16.sprite_index = sprWallPieceTop;
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallPieceTop;
			
			break;
			
		case WALL_PIECE_T:
		
			// X - 2
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallPieceBottom;
			
			// X - 1
			
			var wallInst10 = instance_create_layer((_x - 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst10.sprite_index = sprWallPieceBottom;
			
			// CENTER X
			
			var wallInst15 = instance_create_layer((_x) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst15.sprite_index = sprWallPieceBottom;
			
			// X + 1

			var wallInst20 = instance_create_layer((_x + 1) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst20.sprite_index = sprWallPieceBottom;
			
			// X + 2
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallPieceBottom;
			
			break;
			
		case WALL_PIECE_L:
		
			// X - 2
		
			var wallInst1 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst1.sprite_index = sprWallPieceLeft;
			
			var wallInst2 = instance_create_layer((_x - 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst2.sprite_index = sprWallPieceLeft;
			
			var wallInst3 = instance_create_layer((_x - 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst3.sprite_index = sprWallPieceLeft;
			
			var wallInst4 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst4.sprite_index = sprWallPieceLeft;
			
			var wallInst5 = instance_create_layer((_x - 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst5.sprite_index = sprWallPieceLeft;
			
			break;
			
		case WALL_PIECE_R:
			
			// X + 2
			
			var wallInst21 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 2)  * 16 + yOffset, "Walls", objWall);
			wallInst21.sprite_index = sprWallPieceRight;
			
			var wallInst22 = instance_create_layer((_x + 2) * 16 + xOffset, (_y - 1) * 16 + yOffset, "Walls", objWall);
			wallInst22.sprite_index = sprWallPieceRight;
			
			var wallInst23 = instance_create_layer((_x + 2) * 16 + xOffset, _y * 16 + yOffset, "Walls", objWall);
			wallInst23.sprite_index = sprWallPieceRight;
			
			var wallInst24 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 1) * 16 + yOffset, "Walls", objWall);
			wallInst24.sprite_index = sprWallPieceRight;
			
			var wallInst25 = instance_create_layer((_x + 2) * 16 + xOffset, (_y + 2) * 16 + yOffset, "Walls", objWall);
			wallInst25.sprite_index = sprWallPieceRight;
			
			break;
	}
}