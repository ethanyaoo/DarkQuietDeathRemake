shroudRadius = 5.5;

if (instance_exists(objShroud))
{
	shroudClearGrid = ShroudClearGridSetup(shroudRadius, objShroud.clearGridSize);
}