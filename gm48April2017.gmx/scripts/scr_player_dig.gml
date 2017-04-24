//Get player_move input
var digg_right = keyboard_check(vk_right);//key_right = keyboard_check(ord("D"));
var digg_left = -keyboard_check(vk_left);
var digg_up = -keyboard_check(vk_up);
var digg_down = keyboard_check(vk_down);


//React to inputs
dig_h = key_left + key_right;
dig_v = key_up + key_down;
diggable=noone;

if(dig_h != 0){
    diggable = instance_place(x+dig_h,y,obj_diggable);
}else if(dig_v != 0){
    diggable = instance_place(x,y+dig_v,obj_diggable);
        
}


if(diggable!=noone){
    state="digging";
    if(dig_h != 0){
        y = ( floor(y/32) * 32) + 16;
    }else if(dig_v!=0){
        x = ( floor(x/32) * 32) + 16;
    }   
}else{
    state="still";
}
