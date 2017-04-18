/// Wait. If there is no wall around, go to warning mode
if (!place_meeting(x,y+1,obj_wall) 
|| !place_meeting(x,y-1,obj_wall)
|| !place_meeting(x+1,y,obj_wall)
|| !place_meeting(x-1,y,obj_wall)
)
{
    state = ST_LAVA_WARNING;
    alarm[0] = room_speed * flash_rate;
    alarm[1] = room_speed * warning_time;
}
