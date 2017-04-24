//Get player_move input
key_right = keyboard_check(vk_right);//key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(vk_left);
key_up = -keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_jump = keyboard_check_pressed(vk_space);
climbing=false;
//React to inputs
var move_h = key_left + key_right;
var move_v = key_up + key_down;

hsp = move_h * movespeed;

if( place_meeting(x+1,y,obj_diggable) || place_meeting(x-1,y,obj_diggable) || place_meeting(x,y-global.scale,obj_diggable)){    
    vsp = move_v * movespeed_v;
    climbing=true;
}


if(vsp<10)
{
    vsp += grav;
}

if(place_meeting(x,y+1,obj_wall))
{
    climbing=true;
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

// Right boundry
if (x + (sprite_width/2) + hsp >= global.border_r)
{
    while(x + (sprite_width/2) < global.border_r)
    {
        x += sign(hsp);
    }
    hsp = 0;
}

// Left boundry
if (x + (sprite_width/2) + hsp <= global.border_l)
{
    while(x + (sprite_width/2) > global.border_l)
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


