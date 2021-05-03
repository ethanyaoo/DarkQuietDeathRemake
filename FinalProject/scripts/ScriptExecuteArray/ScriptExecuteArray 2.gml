// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScriptExecuteArray(scr, args)
{
	switch (array_length(args))
	{
		case 1:
			return script_execute(scr, args[0]);
			
		case 2:
			return script_execute(scr, args[0], args[1]);
			
		case 3:
			return script_execute(scr, args[0], args[1], args[2]);
			
		default: show_error("scrip_execute_array: argument count not supported", false);
	}
}