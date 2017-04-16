/// Abstracting user input
// scr_user_input(input_name)
// "fire", "moveleft", "moveup", "interact"
// Gamepad setup (thresholds, etc.) is done in obj_game_control


switch(argument0){

    case INPUT_MV_UP:
        return keyboard_check(ord("W"));
        break;
    case INPUT_MV_LEFT:
        return keyboard_check(ord("A"));
        break;
    case INPUT_MV_RIGHT:
        return keyboard_check(ord("D"));
        break;
    case INPUT_MV_DOWN:
        return keyboard_check(ord("S"));
        break;                                            
    default:
        return false;
}



