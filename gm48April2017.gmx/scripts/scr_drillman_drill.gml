/// Just hold still for now
vsp += grav;
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
y+=vsp;
