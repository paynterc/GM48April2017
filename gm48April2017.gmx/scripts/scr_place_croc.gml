/// Place a gator in the ground

// Where
xx = irandom_range(0,global.room_xunits - 12) * global.scale;
yy = global.ymax-global.scale * 4;

//Dig a hole
scr_dig_area(xx,yy,8,2);
instance_create(xx+64,yy+32,obj_enemy_croc);


