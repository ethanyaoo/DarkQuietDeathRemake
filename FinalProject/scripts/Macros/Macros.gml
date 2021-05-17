#macro FRAME_RATE 60
#macro TILE_SIZE 16
#macro CARD_DIRECTION round(direction/90)
#macro ROOM_START Room1

#macro RESOLUTION_W 2048
#macro RESOLUTION_H 1080

#macro CELL_WIDTH 80
#macro CELL_HEIGHT 80
#macro SECTION_WIDTH 80
#macro SECTION_HEIGHT 80

#macro FLOOR -5
#macro WALL -6
#macro VOID -7

#macro NORTH 1
#macro WEST 2
#macro EAST 4
#macro SOUTH 8

#macro STRAIGHT_V 0
#macro STRAIGHT_H 1
#macro CROSSROAD 2
#macro CORNER_BL 3
#macro CORNER_BR 4
#macro CORNER_TL 5
#macro CORNER_TR 6
#macro T_JUNCT_U 7
#macro T_JUNCT_D 8
#macro T_JUNCT_R 9
#macro T_JUNCT_L 10
#macro DEADEND_L 11
#macro DEADEND_R 12
#macro DEADEND_D 13
#macro DEADEND_U 14
#macro FLOOR_SECTION 15
#macro WALL_PIECE_T 16
#macro WALL_PIECE_B 17
#macro WALL_PIECE_L 18
#macro WALL_PIECE_R 19

enum ENEMY_STATE
{
	IDLE,
	WANDER,
	CHASE,
	ATTACK
}










