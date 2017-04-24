//scr_make_diggables(xunits in,yunits up,xcount,ycount,obj);
//xs starts at zero, ys starts from bottom

var s = global.scale;
var xs = ((argument[0]-1) * s) + s/2;// xstart
var ys = global.ymax - (argument[1] * s) - s/2;// ystart
var xcount = argument[2];// xcount
var ycount = argument[3];// ycount
var obj = argument[4];

var d;// instance
for(var yy=0; yy<ycount; yy++){
    for(var xx=0; xx<xcount; xx++){
        xpos = xs + (xx * s);
        ypos = ys + (yy * s);
        d = instance_create(xpos,ypos,obj); 
        //d.image_angle = choose(0,90,180,270);  
    }
}
