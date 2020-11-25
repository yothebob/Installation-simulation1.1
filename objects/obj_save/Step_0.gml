/// @description 
if !instance_exists(simulator)
	{
	timer = timer -1;
	}
	
	if timer <= 0
	{
	instance_create_depth(x,y,-10000,simulator);
	current_gen += 1;
	timer = 5;
	}
	
if current_gen == total_gen
	{
	
	var adv_day = 0;
	
	for( var j = 0; j < array_length(days);j++)
		{
		adv_day = adv_day + days[j];
		}
	
	adv_day = adv_day / array_length(days);
	
	
	var adv_hour = 0;
	
	for( var j = 0; j < array_length(hours);j++)
		{
		adv_hour = adv_hour + hours[j];
		}
	
	adv_hour = adv_hour / array_length(hours);
	
	
	
	var adv_event = 0;
	
	for( var j = 0; j < array_length(events_happened);j++)
		{
		adv_event = adv_event + events_happened[j];
		}
	
	adv_event = adv_event / array_length(events_happened);
	
	
var file;
if excel == true
{file = get_save_filename("spreadsheet|*.csv", "");} 
else
{file = get_save_filename("txt|*.txt", "");}
var file1;
file1 = file_text_open_write(file);
file_text_write_string( file1, "Total LF,	" + string(totallf) + ",	ideal lf per day	," + string(ideallf) 
+ "\n	Average: Day,	" + string(adv_day) + ",	Hour	," + string(adv_hour) + ",	Events	," + string(adv_event));
	
file_text_write_string(file1,",	event pull list:	," + string(simulator.eventz));
file_text_write_string(file1,"\n	event chance per hour," + string(chance1) + "," + string(chance2))
	for(var i = 0; i < (array_length(days)); i++)
		{
		file_text_write_string(file1, "\ngen	," + string(i));
		file_text_write_string(file1, ",	day		," + string(days[i]));
		file_text_write_string(file1, ",	hours	," + string(hours[i])); 
		file_text_write_string(file1, ",	events triggered	," + string(events_happened[i]));
		}
	
	
	
	file_text_close(file1);
	
	game_end();
	
	}