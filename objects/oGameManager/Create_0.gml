randomize();

global.one_second = game_get_speed(gamespeed_fps);

draw_set_font(fntDesktopText);

baseMovieSize = 1024;
baseAudioSize = 32;
baseGameSize = 4096;
baseMoneyReward = 100;

lose_ = false;

weekday_list_ = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", ];

date_set_timezone(timezone_utc);
datetime_ = date_create_datetime(2018, 1, 1, 8, 0, 0);
alarm[0] = global.one_second;

rent_to_pay_ = 500;

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
			var _size = (baseMovieSize * _quali) + (_quali * irandom_range(-250, baseMovieSize)); //TODO adjust formular
			//{name, summary, quality, size, sprite_name}
			ds_map_add(_entry, "name", _name);
			ds_map_add(_entry, "summary", _summary);
			ds_map_add(_entry, "type", type.movie);
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
			var _size = (baseAudioSize * _quali) + (_quali * irandom_range(-250, baseAudioSize));//TODO adjust formular
			//{name, summary, quality, size, sprite_name}
			ds_map_add(_entry, "name", _name);
			ds_map_add(_entry, "summary", _summary);
			ds_map_add(_entry, "type", type.audio);
			ds_map_add(_entry, "quality", _quali);
			ds_map_add(_entry, "size", _size);
			ds_map_add(_entry, "sprite_name", _sprite_name);
			ds_list_add(audio_list_, _entry);
			_quali++;
		}
	}
	if _type == "game" {
		var _quali = 0;
		repeat 3 {
			var _entry = ds_map_create();
			var _size = (baseGameSize * _quali) + (_quali * irandom_range(-250, baseGameSize));//TODO adjust formular
			//{name, summary, quality, size, sprite_name}
			ds_map_add(_entry, "name", _name);
			ds_map_add(_entry, "summary", _summary);
			ds_map_add(_entry, "type", type.game);
			ds_map_add(_entry, "quality", _quali);
			ds_map_add(_entry, "size", _size);
			ds_map_add(_entry, "sprite_name", _sprite_name);
			ds_list_add(game_list_, _entry);
			_quali++;
		}
	}
}

ds_map_destroy(_resultMap);
ds_list_destroy(_list);