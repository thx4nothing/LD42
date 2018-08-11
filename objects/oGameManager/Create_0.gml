global.one_second = game_get_speed(gamespeed_fps);

var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
draw_set_font(fntDesktopText);

file = file_text_open_read(working_directory + "items.json");
var items_json_ = file_text_read_string(file);
while (!file_text_eof(file)) {
    items_json_ += file_text_read_string(file);
    file_text_readln(file);
}
file_text_close(file);

//show_debug_message(items_json_);

items_ = ds_list_create();
ds_list_add(items_, ds_list_create());

var resultMap = json_decode(items_json_);
var list = ds_map_find_value(resultMap, "default");
var size = ds_list_size(list);
for (var n = 0; n < ds_list_size(list); n++;) {
	var _item = ds_list_create();
	var map = ds_list_find_value(list, n);
	var curr = ds_map_find_first(map);
	while (is_string(curr)) {
		show_debug_message(curr);
		ds_list_add(_item, ds_map_find_value(map, "name"));
		curr = ds_map_find_next(map, curr);
	}
	ds_list_add(items_, _item);
}
ds_map_destroy(resultMap);
