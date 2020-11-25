/// @description draw graph and make value array 
surface_set_target(surf);
var i = 0;
while(x < room_width)
{
	yy = noise(x*.001,frequency,octaves) * amplitude;

	draw_line(x, room_height/2 + yy,x+1,room_height/2 + yy_prev);

	yy_prev = yy;
	value[i] = yy_prev;
	i++;
	x++;
}
surface_reset_target();
draw_surface(surf,0,0);

draw_text(100,100,"seed:  " + string(seed));
draw_text(100,150,"press 'S' to set a certian seed");
draw_text(100,200,"adverage over graph" + string(adv));
draw_text(100,250,"ideal install rate   " + string(noise_sim.rate) +
"  noise install rate  " + string(noise_sim.newrate));
