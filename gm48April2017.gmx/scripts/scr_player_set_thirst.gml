//scr_player_set_thirst(amt)
var amt = argument[0];
// Drink
thirst+=amt;
if(thirst>100){
    thirst=100;
}
