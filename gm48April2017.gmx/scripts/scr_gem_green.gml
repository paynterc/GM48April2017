/// Shoot fruit
for(var i=0; i<8; i++){
    instance_create(x + irandom(8)-16,y- global.scale * 1,obj_food);    
}
global.gamescore+=100;

