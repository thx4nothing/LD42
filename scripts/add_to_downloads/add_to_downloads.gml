//@arg map of item

var _entry = argument0;

var _top =  irandom_range(0, 540 - 64 - 78);
var _left = irandom_range(0, 960-64);

var _item = instance_create_layer(_left, _top, "Items", oItem);

with _item {
	name_ = ds_map_find_value(_entry, "name");
	summary_ = ds_map_find_value(_entry, "summary");
	file_type_ = ds_map_find_value(_entry, "type");
	file_quality_ = ds_map_find_value(_entry, "quality");
	size_ = ds_map_find_value(_entry, "size");
	sprite_name_ = ds_map_find_value(_entry, "sprite_name");
	//sprite_index = asset_get_index(sprite_name_);
	sprite_index = sMovie;
	visible = false;
	location_ = location.downloadmanager;
}
return true;