// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function eventvariables(){
var file = file_text_open_read(working_directory + "Events.txt");


var i = 0;
while (!file_text_eof(file)) {
   eventz[i] = file_text_read_real(file);
   file_text_readln(file);
    i++;
}


file_text_close(file);
}
