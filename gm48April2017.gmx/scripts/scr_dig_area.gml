/// Destroy diggables in area
// scr_dig_area(x1,y1,xunits,yunits);
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2] * global.scale + x1;
var y2 = argument[3] * global.scale + y1;

with(obj_diggable){
    if(x >= x1 && x <= x2){
        if(y>=y1 && y<=y2){
            instance_destroy();
        }
    }
}
