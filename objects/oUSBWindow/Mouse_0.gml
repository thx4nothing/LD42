/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _item_size = ds_list_size(usb_object_.items_);

for (var i = 0; i < _item_size; i++;) {
	var _curr = ds_list_find_value(usb_object_.items_, i);
	_curr.x = x + 6 + i * 64;
	_curr.y = y + 6;
}