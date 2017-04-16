//scr_make_diggables(xs,ys,xcount,ycount);
var xs = argument[0];// xstart
var ys = argument[1];// ystart
var xcount = argument[2];// xcount
var ycount = argument[3];// ycount
var s = global.scale;
var d;// diggable instance
for(var yy=0; yy<ycount; yy++){
    for(var xx=0; xx<xcount; xx++){
        xpos = xs + (xx * s) + (s/2);
        ypos = ys + (yy * s) + (s/2);
        d = instance_create(xpos,ypos,obj_diggable); 
        d.image_angle = choose(0,90,180,270);  
    }
}
