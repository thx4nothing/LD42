//@arg1 item
//@arg2 usb_number

var _source = argument0;
var _usb = argument1;

_usb = instance_find(oUSB, _usb);

if (_usb.max_size_ - _usb.used_size_) < _source.size_ return false;

var _item = instance_create_layer(0, 0, "WindowItems", oItem);
with _item {
	name_ = _source.name_;
	summary_ = _source.summary_;
	file_type_ = _source.file_type_;
	file_quality_ = _source.file_quality_;
	size_ = _source.size_;
	sprite_name_ = _source.sprite_name_;
	location_ = location.usb;
	visible = false;
	//sprite_index = asset_get_index(sprite_name_);
	sprite_index = sMovie;
	depth = -199;
}

with _usb {
	ds_list_add(items_, _item);
	used_size_ += _item.size_;
}

return true;
