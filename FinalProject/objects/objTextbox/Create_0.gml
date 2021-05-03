x1 = RESOLUTION_W / 2;
y1 = RESOLUTION_H - 240;
x2 = RESOLUTION_W / 2;
y2 = RESOLUTION_H;

x1Target = 0;
x2Target = RESOLUTION_W;

lerpProgress = 0;

value = "";
text_speed = room_speed / 20;
text_displayed = "";
text_length = -1;
index = 0;
cooldown = text_speed;

responseSelected = 0;

audio_play_sound(sndTalk, 10, false);

