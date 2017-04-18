///Enemy Collision
var e;
e = instance_place(x,y,obj_enemy_wander);
if(instance_exists(e))
{

    with(e){
        state = ST_ENEMY_DEAD;
    }

}

e = instance_place(x,y,obj_enemy_hunter);
if(instance_exists(e))
{

    with(e){
        state = ST_ENEMY_DEAD;
    }

}

e = instance_place(x,y,obj_player);
if(instance_exists(e))
{

    scr_player_death();

}



vsp+=global.grav;

if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
    state = ST_ROCK_WAIT;
}

y += vsp;


