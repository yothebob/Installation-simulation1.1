// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function noise(xpos,frequency,octives){

var result = 0;
var amplitude = 1;

for (var i = 0; i < octives; i++)
	{
	result += noisefunction(xpos*frequency) * amplitude;
	amplitude *= .4;
	frequency *= 2;
	}
	return result
}