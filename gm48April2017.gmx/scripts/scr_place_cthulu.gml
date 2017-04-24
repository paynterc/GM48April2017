/// Place a gator in the ground

// Where
xx = (global.room_xunits/2 - 4) * global.scale;
yy = global.ymax- global.scale * 12;

//Dig a hole
scr_dig_area(xx,yy,8,8);
var cth = instance_create(xx+128,yy+128,obj_boss_cthulu);
cth.depth=10000;

