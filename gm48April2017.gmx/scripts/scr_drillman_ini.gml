/// Fall then move
vsp+=global.grav;

if (place_meeting(x,y+vsp,obj_scaffold))
{
    while(!place_meeting(x,y+sign(vsp),obj_scaffold))
    {
        y += sign(vsp);
    }
    vsp = 0;
    state=ST_DRILLMAN_MOVE;// Move
}

y += vsp;

if(instance_exists(mydrill)){
    mydrill.x = x;
    mydrill.y = y;
}
