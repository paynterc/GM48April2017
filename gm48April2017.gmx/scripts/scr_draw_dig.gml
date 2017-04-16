//scr_draw_dig(x1,y1,xunits,yunits)
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2] * global.scale + x1;
var y2 = argument[3] * global.scale + y1;
draw_set_color(c_green);
draw_rectangle(x1,y1,x2,y2,true);
