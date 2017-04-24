/// Place a gator in the ground
var ys = 40;
//Dig a hole
var xunits = global.room_xunits-6;
scr_dig_grid(4,ys,xunits,8);
scr_make_objects_grid(4,ys,xunits,1,obj_dig_onyx);
scr_make_objects_grid(4,ys-7,xunits,1,obj_dig_onyx);

for(var i=ys-1; i >ys-6; i--){
    scr_make_objects_grid(4,i,1,1,obj_dig_onyx);
    scr_make_objects_grid(3+xunits,i,1,1,obj_dig_onyx);
}

scr_make_objects_grid(7,ys-3,1,1,obj_dig_onyx);
scr_make_objects_grid(8,ys-3,1,1,obj_dig_onyx);
scr_make_objects_grid(9,ys-3,1,1,obj_dig_onyx);

scr_make_objects_grid(15,ys-3,1,1,obj_dig_onyx);
scr_make_objects_grid(16,ys-3,1,1,obj_dig_onyx);
scr_make_objects_grid(17,ys-3,1,1,obj_dig_onyx);

scr_make_objects_grid(23,ys-3,1,1,obj_dig_onyx);
scr_make_objects_grid(24,ys-3,1,1,obj_dig_onyx);
scr_make_objects_grid(25,ys-3,1,1,obj_dig_onyx);

scr_make_objects_grid(8,ys-2,1,1,obj_gem_green);
scr_make_objects_grid(16,ys-2,1,1,obj_gem_green);
scr_make_objects_grid(24,ys-2,1,1,obj_gem_green);



scr_make_objects_grid(7,ys-5,1,1,obj_enemy_croc);
scr_make_objects_grid(24,ys-5,1,1,obj_enemy_croc);

scr_make_objects_grid(12,ys-1,1,1,obj_enemy_spider);
scr_make_objects_grid(20,ys-1,1,1,obj_enemy_spider);
