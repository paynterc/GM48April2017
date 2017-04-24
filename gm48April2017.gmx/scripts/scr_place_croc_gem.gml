/// Place a gator in the ground
//scr_place_croc_gem(xgrid);
//xs = 4
var xs = argument[0];
var ys = global.ymax-12;
//Dig a hole
scr_dig_grid(xs,ys,9,8);
scr_make_objects_grid(xs,ys,9,1,obj_dig_onyx);
scr_make_objects_grid(xs,ys-7,9,1,obj_dig_onyx);

for(var i=ys-1; i >ys-6; i--){
    scr_make_objects_grid(xs,i,1,1,obj_dig_onyx);
    scr_make_objects_grid(xs,i,1,1,obj_dig_onyx);
}

scr_make_objects_grid(xs+3,ys-3,1,1,obj_dig_onyx);
scr_make_objects_grid(xs+4,ys-3,1,1,obj_dig_onyx);
scr_make_objects_grid(xs+5,ys-3,1,1,obj_dig_onyx);

scr_make_objects_grid(xs+4,ys-2,1,1,obj_gem_green);

scr_make_objects_grid(xs+4,ys-5,1,1,obj_enemy_croc);
