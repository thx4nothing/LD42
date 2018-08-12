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

var resultMap = json_decode(items_json_);
var list = ds_map_find_value(resultMap, "default");
items_ = ds_list_find_index(list, 0);
ds_map_destroy(resultMap);

baseMovieSize = 1024;
baseAudioSize = 32;
baseGameSize = 4096;

/*var size = ds_list_size(list);
for (var n = 0; n < ds_list_size(list); n++;) {
	var _item = ds_list_create();
	var map = ds_list_find_value(list, n);
	ds_list_add(_item, ds_map_find_value(map, "name"));
	ds_list_add(_item, ds_map_find_value(map, "size"));
	ds_list_add(_item, ds_map_find_value(map, "quality"));
	ds_list_add(_item, ds_map_find_value(map, "type"));
	ds_list_add(_item, ds_map_find_value(map, "summary"));
	ds_list_add(_item, ds_map_find_value(map, "sprite_name"));
	ds_list_add(items_, _item);
}*/
