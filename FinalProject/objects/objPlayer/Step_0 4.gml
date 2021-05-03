//Player Input
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

keyInteract = keyboard_check_pressed(vk_space);

inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
//Makes sure that player movements are valid
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

if (!global.gamePaused) script_execute(state);

depth = -bbox_bottom;
