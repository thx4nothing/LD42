//@arg1 item
//@arg2 usb_number

var _source = argument0;
var _usb = argument1;

with instance_find(oUSB, _usb){
	var _entry = ds_map_create();
	ds_map_add(_entry, "name", _source.name_);
	ds_map_add(_entry, "summary", _source.summary_);
	ds_map_add(_entry, "type", _source.file_type_);
	ds_map_add(_entry, "quality", _source.file_quality_);
	ds_map_add(_entry, "size", _source.size_);
	ds_map_add(_entry, "sprite_name", _source.sprite_name_);
	ds_list_add(items_, _entry);
}


