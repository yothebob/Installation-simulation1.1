/// @description change seed, restart, trigger alarm
if keyboard_check_pressed(ord("S"))
{
seed = get_integer("input seed #.",seed);
surface_free(surf);
surf = surface_create(room_width,room_height);
x = 0;
}

if keyboard_check_pressed(ord("R"))
{
room_restart();
}

if x == room_width
{
alarm[0] = 1;
}
noise_sim.newrate = (adv * noise_sim.rate);