/// @description 
if mouse_check_button_pressed(mb_left)
{
	realrate = 0;
	rate = get_integer("what is install rate per day?", rate);
	totallf = get_integer("total LF?", totallf);
	levels = get_integer("how may seperate sections will have railing?", levels);
	startcalc = true;
}

if startcalc == true
{
realrate = totallf/ rate;
}