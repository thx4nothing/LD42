if sprite_exists(paused_sprite) {
	draw_sprite_ext(paused_sprite, 0, 0, 0, paused_sprite_scale, paused_sprite_scale, 0, c_white, 1);
	draw_set_alpha(0.6);
	draw_rectangle_color(0, 0, _gui_width, _gui_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}
