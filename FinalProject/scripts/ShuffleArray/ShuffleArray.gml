// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShuffleArray(array)
{
	var i, j, k;
	
	for (i = 0; i < 3; i++)
	{
		j = random_range(i, 3);
		
		if (i != j)
		{
			k = array[i];
			array[i] = array[j];
			array[j] = k;
		}
	}
}