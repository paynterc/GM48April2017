/// Remove a value from array
// scr_array_remove(array,value)
var thearray = argument0;
var thevalue = argument1;
var new_array = noone;
for(var i=0;i<array_length_1d(thearray); i++){    
    if(thearray[i]!=thevalue){
        new_array = scr_push_array(new_array,thearray[i]);
    } 
}
return new_array;

