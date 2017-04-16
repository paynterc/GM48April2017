/// Abstracting user input
// scr_user_input(input_name)
// "fire", "moveleft", "moveup", "interact"
// Gamepad setup (thresholds, etc.) is done in obj_game_control
/***

key_right = keyboard_check(vk_right);//key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(vk_left);
key_up = -keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
***/

switch(argument0){


    case INPUT_MENU_OPTION_NEXT:
        return keyboard_check_pressed(vk_down);
        break;
    case INPUT_MENU_OPTION_PREV:
        return keyboard_check_pressed(vk_up);
        break;
    case INPUT_MENU_OPTION_SELECT:
        return keyboard_check_pressed(vk_enter);
        break;       
    case INPUT_ESCAPE:
        return keyboard_check_pressed(vk_escape);
        break;
                                                 
    default:
        return false;
}



