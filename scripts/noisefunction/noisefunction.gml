
function noisefunction(xpos){
var x_min = floor(xpos);
var x_max = x_min + 1;

random_set_seed(x_min + seed);
var left_point = random_range(-1,1);
random_set_seed(x_max+ seed);
var right_point = random_range(-1,1);

return lerp(left_point,
			right_point,
			fade(xpos-x_min)
			);
}