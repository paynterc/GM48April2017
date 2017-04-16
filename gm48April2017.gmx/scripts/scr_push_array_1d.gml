/// Adds a value to the end of an array. scr_push_array_1d(array,value);
var my_array = argument0;
var new_value = argument1;
var new_index = 0;
if(my_array[0]!=-1){
    new_index = array_length_1d( argument0 );
}
my_array[@ new_index] = new_value;

return new_index;

