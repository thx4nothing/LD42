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
			var _size = (baseMovieSize * (_quali+1)) + ((_quali+1) * irandom_range(-512, baseMovieSize)); 
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
			var _size = (baseAudioSize * (_quali+1)) + ((_quali+1) * irandom_range(-16, baseAudioSize));
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
			var _size = (baseGameSize * (_quali+1)) + ((_quali+1) * irandom_range(-2048, baseGameSize));
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