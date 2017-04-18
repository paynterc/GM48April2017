//scr_make_diggables(xs,ys,xcount,ycount);
var xs = argument[0];// xstart
var ys = argument[1];// ystart
var xcount = argument[2];// xcount
var ycount = argument[3];// ycount
var s = global.scale;
var d;// diggable instance
var rotate=true;
for(var yy=0; yy<ycount; yy++){
    instance_create(xs-(s/2),ys + (yy * s) + (s/2),obj_wall);
    for(var xx=0; xx<xcount; xx++){
        rotate = true;
        xpos = xs + (xx * s) + (s/2);
        ypos = ys + (yy * s) + (s/2);
        var chance_water = 10;
        var chance_rock = 15;
        var chance_lava = 200;
        var roll = irandom(chance_water);
        if(roll==chance_water){
            d = instance_create(xpos,ypos,obj_dig_water);
        }else{
            roll=irandom(chance_lava);
            if(roll==chance_lava && global.allow_lava){
                d = instance_create(xpos,ypos,obj_dig_lava);
                rotate = false;
            }else{
                roll=irandom(chance_rock);
                if(roll==chance_rock){
                    d = instance_create(xpos,ypos,obj_dig_rock);
                    rotate=false;
                }else{
                    d = instance_create(xpos,ypos,obj_diggable);
                }
                            
            }
            
        }
        
        if(rotate) d.image_angle = choose(0,90,180,270);  
    }
    instance_create(xpos+s,ypos,obj_wall);
}
