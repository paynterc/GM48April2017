//scr_make_diggables(xs,ys,xcount,ycount,obj);
var xs = argument[0];// xstart
var ys = argument[1];// ystart
var xcount = argument[2];// xcount
var ycount = argument[3];// ycount
var obj = argument[4];
var s = global.scale;
var d;// instance
for(var yy=0; yy<ycount; yy++){
    for(var xx=0; xx<xcount; xx++){
        xpos = xs + (xx * s) + (s/2);
        ypos = ys + (yy * s) + (s/2);
        d = instance_create(xpos,ypos,obj); 
        //d.image_angle = choose(0,90,180,270);  
    }
}
