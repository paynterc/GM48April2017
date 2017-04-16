/// Move

hsp = dir * movespeed;
vsp += grav;

//Horizontal Collision Check
if (place_meeting(x+hsp,y,obj_scaffold))
{
    while(!place_meeting(x+sign(hsp),y,obj_scaffold))
    {
        x += sign(hsp);
    }
    hsp = 0;
    
    dir *= -1;
}

//Vertical Collision Check
if (place_meeting(x,y+vsp,obj_scaffold))
{
    while(!place_meeting(x,y+sign(vsp),obj_scaffold))
    {
        y += sign(vsp);
    }
    vsp = 0;
    if(fearofheights && !position_meeting(x +(sprite_width/2)*dir, y +(sprite_height/2) + fearofheights, obj_scaffold))
    {
        dir *= -1;
    }

}
if(place_meeting(x,y+1,obj_scaffold)){
    //If on ground
    x += hsp;
}
y += vsp;

if(instance_exists(mydrill)){
    mydrill.x = x;
    mydrill.y = y;
}
