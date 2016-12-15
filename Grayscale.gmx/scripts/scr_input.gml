///scr_input
//keys held down
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
left_key = -keyboard_check(ord("A"));
right_key = keyboard_check(ord("D"));

//keys pressed
up_key_pressed = keyboard_check_pressed(ord("W"));
down_key_pressed = keyboard_check_pressed(ord("S"));
left_key_pressed = -keyboard_check_pressed(ord("A"));
right_key_pressed = keyboard_check_pressed(ord("D"));
jump_key = keyboard_check_pressed(vk_space);
shift_key = keyboard_check_pressed(vk_shift);
enter_key = keyboard_check_pressed(vk_enter);
