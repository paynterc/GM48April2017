//scr_play_sound(id,loop,modulate)
var snd = argument[0];
var loop = argument[1];
var modulate = argument[2];

if(!audio_is_playing(snd)){
    audio_play_sound(snd,2,loop);
    if(modulate){
        var m=random(.5);
        audio_sound_pitch(snd,m);
    }   
}
