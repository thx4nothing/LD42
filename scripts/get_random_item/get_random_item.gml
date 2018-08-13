var _item = instance_create_layer(x,y,"Items", oItem);

var _type = irandom_range(0,2);

var _list = noone;
switch _type {
	case type.movie:
		_list = oGameManager.movie_list_;
		break;
	case type.audio:
		_list = oGameManager.audio_list_;
		break;
	case type.game:
		_list = oGameManager.game_list_;
		break;
}


var _list_size = ds_list_size(_list);

show_debug_message(_list_size);

var _entry = ds_list_find_value(_list, irandom_range(0, _list_size - 1));
show_debug_message(ds_map_size(_entry));

with _item {
	show_debug_message("-------------------------GETTING NEW ITEM-------------------------");
	name_ = ds_map_find_value(_entry, "name");
	summary_ = ds_map_find_value(_entry, "summary");
	file_type_ = _type;
	file_quality_ = ds_map_find_value(_entry, "quality");
	size_ = ds_map_find_value(_entry, "size");
	sprite_name_ = ds_map_find_value(_entry, "sprite_name");
	//sprite_index = asset_get_index(sprite_name_);
	sprite_index = sMovie;
	show_debug_message("name: " + name_);
	show_debug_message("summary: " + summary_);
	show_debug_message("type: " + string(file_type_));
	show_debug_message("quali: " + string(file_quality_));
	show_debug_message("size: " + string(size_));
	show_debug_message("sprite_name: " + sprite_name_);	
}
return _item;