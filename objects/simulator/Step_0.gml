/// @description

if remaininglf <= 0
	{
	obj_save.days[obj_save.current_gen] = day;
	obj_save.hours[obj_save.current_gen] = hour;
	obj_save.events_happened[obj_save.current_gen] = eventshappened;
	instance_destroy();
	}


tick ++;
remaininglf = remaininglf - installspeed;

if installspeed < idealspeed and global.play_event == false
	{installspeed = installspeed + rampup;}


if tick == 10
	{
	hour = hour + 1;
	checktick = irandom_range(1,chances);
	 ii = irandom_range(1,ii);
	tick = 0;
	}

if hour == 4 
	{installspeed = 0;}

if hour == 8
	{
	installspeed = 0;
	day = day + 1;
	hour = 0;
	}

//if hour == 7 and hour < 8 and installspeed > 0
//	{installspeed = installspeed - rampup;}


if checktick == number_pick and global.play_event == false
	{
	global.play_event = true;
	checktick = 0;
	installspeed = 0;
	random_event = eventz[ii];
	eventshappened = eventshappened +1;
	}
	
if global.play_event == true
	{
	installspeed = 0;	
	random_event = random_event -1;
	}
	
	if random_event <= 0 
		{global.play_event = false;}