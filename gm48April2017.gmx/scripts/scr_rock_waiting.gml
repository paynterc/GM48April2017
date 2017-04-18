/// Wait. If there is no wall around, go to warning mode
if ( !place_meeting(x,y+1,obj_wall))
{
    state = ST_ROCK_WARNING;
    alarm[0] = room_speed * flash_rate;
    alarm[1] = room_speed * warning_time;
}
