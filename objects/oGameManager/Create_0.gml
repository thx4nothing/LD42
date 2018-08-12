global.one_second = game_get_speed(gamespeed_fps);

var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
draw_set_font(fntDesktopText);

baseMovieSize = 1024;
baseAudioSize = 32;
baseGameSize = 4096;

var _file = file_text_open_read(working_directory + "items.json");
var _items_json = file_text_read_string(_file);
while (!file_text_eof(_file)) {
    _items_json += file_text_read_string(_file);
    file_text_readln(_file);
}
file_text_close(_file);

var _resultMap = json_decode(_items_json)
var _list = ds_map_find_value(_resultMap, "default");
var _items = ds_list_find_index(_list, 0);

movie_list_ = ds_list_create();
game_list_ = ds_list_create();
audio_list_ = ds_list_create();

for (var i=0; i < ds_list_size(_items); i++;) {
	var _curr = ds_list_find_value(_items, i);
	var _name = ds_map_find_value(_curr, "name");
	var _type = ds_map_find_value(_curr, "type");
	var _summary = ds_map_find_value(_curr, "summary");
	var _sprite_name = ds_map_find_value(_curr, "sprite_name");
	
	if _type == "movie" {
		var _quali = 0;
		repeat 3 {
			var _entry = ds_map_create();
			var _size = (baseMovieSize * _quali) + (_quali * irandom_range(-250, baseMovieSize));
			//{name, summary, quality, size, sprite_name}
			ds_map_add(_entry, "name", _name);
			ds_map_add(_entry, "summary", _summary);
			ds_map_add(_entry, "quality", _quali);
			ds_map_add(_entry, "size", _size);
			ds_map_add(_entry, "sprite_name", _sprite_name);
			ds_list_add(movie_list_, _entry);
			_quali++;
		}
	}
	if _type == "audio" {
		var _quali = 0;
		repeat 3 {
			var _entry = ds_map_create();
			var _size = (baseAudioSize * _quali) + (_quali * irandom_range(-250, baseAudioSize));
			//{name, summary, quality, size, sprite_name}
			ds_map_add(_entry, "name", _name);
			ds_map_add(_entry, "summary", _summary);
			ds_map_add(_entry, "quality", _quali);
			ds_map_add(_entry, "size", _size);
			ds_map_add(_entry, "sprite_name", _sprite_name);
			ds_list_add(audio_list_, _curr);
			_quali++;
		}
	}
	if _type == "game" {
		var _quali = 0;
		repeat 3 {
			var _entry = ds_map_create();
			var _size = (baseGameSize * _quali) + (_quali * irandom_range(-250, baseGameSize));
			//{name, summary, quality, size, sprite_name}
			ds_map_add(_entry, "name", _name);
			ds_map_add(_entry, "summary", _summary);
			ds_map_add(_entry, "quality", _quali);
			ds_map_add(_entry, "size", _size);
			ds_map_add(_entry, "sprite_name", _sprite_name);
			ds_list_add(game_list_, _curr);
			_quali++;
		}
	}
}

ds_map_destroy(_resultMap);
ds_list_destroy(_list);

show_debug_message(ds_list_size(movie_list_));
show_debug_message(ds_list_size(audio_list_));
show_debug_message(ds_list_size(game_list_));
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
