// Play sound
// Do death animation
if(instance_exists(obj_player)){
    var xx=obj_player.x;
    var yy=obj_player.y;
    instance_create(xx,yy,obj_player_dead);
    with(obj_player){
        instance_destroy();
    }   
    if(instance_exists(obj_level_control)){
        with(obj_level_control){
        event_user(0);//Trigger game over event
    }
    }
}

