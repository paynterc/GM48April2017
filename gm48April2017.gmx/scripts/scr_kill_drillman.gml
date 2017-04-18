if(state!=ST_DRILLMAN_DEAD){
    state = ST_DRILLMAN_DEAD;
    alarm[2]=room_speed * 2;
    global.gamescore+=100;
    instance_create(x,y,obj_explosion);
    audio_play_sound(snd_effect_hit1,2,0);
}
