// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StealItem()
{
	var stealChance = random_range(1, 100);
	
	if (stealChance <= 50)
	{
		holdKey = true;
		
		NewTextbox("You have successfully stolen the key", ["0:(Leave)"]);
		//audio_play_sound(sndCollectKey, 10, false);
	}
	else if (stealChance <= 75)
	{
		NewTextbox("You have failed halfway. The key fell to the ground", ["0:(Leave)"]);
		
		instance_create_layer(x, y, "Instances", objKey);
	}
	else
	{
		NewTextbox("You have failed to steal the key", ["0:(Leave)"]);
	}
}