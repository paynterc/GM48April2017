y-=movespeed;

if (place_meeting(x,y-1,mydrillman))
{
    x=mydrillman.x
    y=mydrillman.y
    state = ST_DRILL_WAITING;
    mydrillman.state = ST_DRILLMAN_RESET;

}
