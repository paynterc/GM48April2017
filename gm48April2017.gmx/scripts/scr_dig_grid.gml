/// Destroy diggables in area
// scr_dig_area(x1,y1,xunits,yunits);
// y1 is y units from bottom
var s = global.scale;
var x1 = (argument[0] -1) * s;// xstart
var y1 = global.ymax - ( (argument[1]+1) * s);// ystart
var x2 = (argument[2] * global.scale) + x1;
var y2 = (argument[3] * global.scale) + y1;

with(obj_diggable){
    if(x >= x1 && x <= x2){
        if(y>=y1 && y<=y2){
            instance_destroy();
        }
    }
}

with(obj_faller){
    if(x >= x1 && x <= x2){
        if(y>=y1 && y<=y2){
            instance_destroy();
        }
    }
}

with(obj_pickup){
    if(x >= x1 && x <= x2){
        if(y>=y1 && y<=y2){
            instance_destroy();
        }
    }
}
