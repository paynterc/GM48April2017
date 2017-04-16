///Drill Down

var move_h = 0;

var move_v = 1;

hsp = move_h * movespeed;

if( place_meeting(x+1,y,obj_wall) || place_meeting(x-1,y,obj_wall) ){
    
    vsp = move_v * movespeed_v;
    
}


if(vsp<10)
{
    vsp += grav;
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
if (x - (sprite_width/2) + hsp <= global.border_l)
{
    while(x - (sprite_width/2) > global.border_l)
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

diggable=noone;
diggable = instance_place(x,y+1,obj_diggable);
if(!instance_exists(diggable)){
    diggable = noone;
}



if(y>drilldepth){
    state = ST_DRILL_RETURNING;
}

