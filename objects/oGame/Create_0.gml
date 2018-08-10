#macro CHECK_UP if keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu)
#macro CHECK_UP_PRESSED if keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu)
#macro CHECK_UP_RELEASED if keyboard_check_released(ord("W")) || gamepad_button_check_released(0, gp_padu)
#macro CHECK_DOWN if keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd)
#macro CHECK_DOWN_PRESSED if keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd)
#macro CHECK_DOWN_RELEASED if keyboard_check_released(ord("S")) || gamepad_button_check_released(0, gp_padd)
#macro CHECK_LEFT if keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl)
#macro CHECK_LEFT_PRESSED if keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_padl)
#macro CHECK_LEFT_RELEASED if keyboard_check_released(ord("A")) || gamepad_button_check_released(0, gp_padl)
#macro CHECK_RIGHT if keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr)
#macro CHECK_RIGHT_PRESSED if keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0, gp_padr)
#macro CHECK_RIGHT_RELEASED if keyboard_check_released(ord("D")) || gamepad_button_check_released(0, gp_padr)

#macro CHECK_CROSS if keyboard_check(ord("K")) || gamepad_button_check(0, gp_face1)
#macro CHECK_CROSS_PRESSED if keyboard_check_pressed(ord("K")) || gamepad_button_check_pressed(0, gp_face1)
#macro CHECK_CROSS_RELEASED if keyboard_check_released(ord("K")) || gamepad_button_check_released(0, gp_face1)
#macro CHECK_SQUARE if keyboard_check(ord("J")) || gamepad_button_check(0, gp_face3)
#macro CHECK_SQUARE_PRESSED if keyboard_check_pressed(ord("J")) || gamepad_button_check_pressed(0, gp_face3)
#macro CHECK_SQUARE_RELEASED if keyboard_check_released(ord("J")) || gamepad_button_check_released(0, gp_face3)
#macro CHECK_CIRCLE if keyboard_check(ord("L")) || gamepad_button_check(0, gp_face2)
#macro CHECK_CIRCLE_PRESSED if keyboard_check_pressed(ord("L")) || gamepad_button_check_pressed(0, gp_face2)
#macro CHECK_CIRCLE_RELEASED if keyboard_check_released(ord("L")) || gamepad_button_check_released(0, gp_face2)
#macro CHECK_TRIANGLE if keyboard_check(ord("I")) || gamepad_button_check(0, gp_face4)
#macro CHECK_TRIANGLE_PRESSED if keyboard_check_pressed(ord("I")) || gamepad_button_check_pressed(0, gp_face4)
#macro CHECK_TRIANGLE_RELEASED if keyboard_check_released(ord("I")) || gamepad_button_check_released(0, gp_face4)

#macro CHECK_START if keyboard_check(vk_escape) || gamepad_button_check(0, gp_start)
#macro CHECK_START_PRESSED if keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start)
#macro CHECK_START_RELEASED if keyboard_check_released(vk_escape)) || gamepad_button_check_released(0, gp_start)

#macro CHECK_SELECT if keyboard_check(vk_enter) || gamepad_button_check(0, gp_select)
#macro CHECK_SELECT_PRESSED if keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_select)
#macro CHECK_SELECT_RELEASED if keyboard_check_released(vk_enter)) || gamepad_button_check_released(0, gp_select)


global.one_second = game_get_speed(gamespeed_fps);

var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
draw_set_font(global.font);

paused_ = false;
paused_sprite = noone;
paused_sprite_scale = display_get_gui_width() / view_wport[0];

freeze = false; //freeze true or false
freezeDur = 5; //how long the freeze lasts

if gamepad_is_connected(0) gamepad_set_axis_deadzone(0, 0.05);

