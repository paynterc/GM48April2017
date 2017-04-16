//Get player_move input
key_right = keyboard_check(vk_right);//key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(vk_left);
key_up = -keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_jump = keyboard_check_pressed(vk_space);

//React to inputs
var move_h = key_left + key_right;
var move_v = key_up + key_down;

hsp = move_h * movespeed;

if( place_meeting(x+1,y,obj_wall) || place_meeting(x-1,y,obj_wall) ){
    
    vsp = move_v * movespeed_v;
    image_blend = c_yellow;
    
}else{
    image_blend = c_white;
}


if(vsp<1)
{
    vsp += grav;
}

if(place_meeting(x,y+1,obj_wall))
{
    if (key_jump) vsp = -jumpspeed;
}



//Horizontal Collision Check
if (place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;

}
x += hsp;

//Vertical Collision Check

if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

y += vsp;


