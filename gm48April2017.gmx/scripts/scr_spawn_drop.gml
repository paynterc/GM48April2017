//scr_spawn_drop(obj,max,)
var obj = argument[0];
var maxobj = argument[1];
var c = instance_number(obj);

if(c<maxobj){
    var cell = irandom(global.room_xunits);
    var xpos = cell * global.scale - (global.scale/2);
    var unit = instance_create(xpos,0,obj);
    unit.y = global.ymin - unit.sprite_height * 10; 
}
