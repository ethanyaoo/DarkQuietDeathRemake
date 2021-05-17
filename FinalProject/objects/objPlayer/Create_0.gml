state = "PlayerStateFree";
lastState = state;

hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;

x_remainder = 0;
y_remainder = 0;

sprIdle = sprPlayerIdle;
sprWalk = sprPlayerWalk;
localFrame = 0;

holdKey = false;

recoil = 0;

flashlightOn = false;
flashlightCharging = false;
flashlightBattery = 100;

playerBreathing = audio_play_sound(sndHeavyBreathing, 9, true);

//audio_sound_gain(playerBreathing, 0, 100000);

//instance_create_layer(x, y, "Level", objShroud);