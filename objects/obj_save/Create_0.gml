seed = 0;
if show_question("have seed to generate?")
{
seed = get_integer("enter seed here?",seed);
}
else
{
randomize();
seed = irandom(32146551);
random_set_seed(seed);
}




current_gen = 0;
total_gen = 10;

days[0] = 0;
hours[0] = 0;
events_happened[0] = 0;
timer = 5;

chance1= 4;
chance2 = 8;
chances = 2;
totallf = 100;
idealspeed = 30;

if show_question("do you want in Excel sheet?")
{excel= true;}
else
{excel = false;}
total_gen = get_integer("how many Generations do you want to run?",total_gen);
totallf = get_integer("how many LF is the job?",totallf);
idealspeed = get_integer("ideal install rate per day", idealspeed);
ideallf = idealspeed;
idealspeed = idealspeed/8;
idealspeed = idealspeed/10;
chance1 = get_integer("what is the highest chance of interuption? ex:4 (1 out of x)", chance1);
chance2 = get_integer("what is the lowest chance of interuption? ex:16 (1 out of x)", chance2);

//chances = irandom_range(chance1,chance2);

room_goto(sim);