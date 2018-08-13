//@arg1 entry (ds_map)

var _entry = argument0;

var _item = instance_create_layer(x,y,"Items", oItem);

with _item {
	name_ = ds_map_find_value(_entry, "name");
	summary_ = ds_map_find_value(_entry, "summary");
	file_type_ = ds_map_find_value(_entry, "type");
	file_quality_ = ds_map_find_value(_entry, "quality");
	size_ = ds_map_find_value(_entry, "size");
	sprite_name_ = ds_map_find_value(_entry, "sprite_name");
	//sprite_index = asset_get_index(sprite_name_); TODO
	sprite_index = sMovie;
}
return _item;