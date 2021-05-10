/// @description Insert description here
// You can write your code in this editor

textMap = ds_map_create();
responseMap = ds_map_create();

npcIden = 0;
value = "";

text_speed = room_speed / 10;
text_displayed = "";
text_length = -1;
index = 0;
cooldown = text_speed;

responses = ["Test response", "Test response two"];
responseSelected = 0;

ds_map_add(responseMap, "NPC_00", "(Leave)");
ds_map_add(responseMap, "NPC_01", "Hello");
ds_map_add(responseMap, "NPC_010", "Nice weather");
ds_map_add(responseMap, "NPC_011", "Where is this");
ds_map_add(responseMap, "NPC_0110", "of where");
ds_map_add(responseMap, "NPC_0111", "of what");
ds_map_add(responseMap, "NPC_01100", ". . . ");
ds_map_add(responseMap, "NPC_01101", "can I leave?");
ds_map_add(responseMap, "NPC_01110", "where is that");
ds_map_add(responseMap, "NPC_01111", "what?");

ds_map_add(textMap, "NPC_0", ". . . ");
ds_map_add(textMap, "NPC_01", "Hello");
ds_map_add(textMap, "NPC_011", "The start");
ds_map_add(textMap, "NPC_010", ". . .");
ds_map_add(textMap, "NPC_0110", "The path");
ds_map_add(textMap, "NPC_0111", "The chase");
ds_map_add(textMap, "NPC_01101", "No");
ds_map_add(textMap, "NPC_01110", "South");
ds_map_add(textMap, "NPC_01111", "wait");

//audio_play_sound(sndTalk, 10, false);

xPos = window_get_width() / 2;
yPos = (window_get_height() / 2) + 200;

