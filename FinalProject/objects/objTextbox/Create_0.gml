x1 = camera_get_view_width(view_camera[0]) / 2;
y1 = camera_get_view_height(view_camera[0]) - 120;
x2 = camera_get_view_width(view_camera[0]) / 2;
y2 = camera_get_view_height(view_camera[0]);


x1Target = camera_get_view_width(view_camera[0]) / 8;
x2Target = 7 * camera_get_view_width(view_camera[0]) / 8;

lerpProgress = 0;

value = "";
text_speed = room_speed / 20;
text_displayed = "";
text_length = -1;
index = 0;
cooldown = text_speed;

responseSelected = 0;

//audio_play_sound(sndTalk, 10, false);

