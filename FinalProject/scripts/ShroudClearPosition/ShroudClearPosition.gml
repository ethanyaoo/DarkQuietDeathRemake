// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShroudClearPosition(_x, _y)
{
	var _sx = _x div objShroud.gridSize;
	var _sy = _y div objShroud.gridSize;
	
	var shroudClearSize = objShroud.clearGridSize + ceil(objPlayer.flashlightBattery / 10);
	
	if ((shroudClearSize mod 2) == 0) shroudClearSize += 1;
	
	var _half = shroudClearSize div 2;
	
	_sx -= _half;
	_sy -= _half;
	
	for (var _ix = 0; _ix < shroudClearSize; _ix++)
	{
		for (var _iy = 0; _iy < shroudClearSize; _iy++)
		{
			var _f = shroudClearGrid[# _ix, _iy];
			
			if (_f == 0 && _sx + _ix >= 0 && _sy + _iy >= 0)
			{
				objShroud.shroudGrid[# _sx + _ix, _sy + _iy] = _f;
			}
		}
	}
}