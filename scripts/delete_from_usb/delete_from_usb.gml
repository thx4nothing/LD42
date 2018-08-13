//@arg1 item
//@arg2 usb_number

var _item = argument0;
var _usb = argument1;

_usb = instance_find(oUSB, _usb);
with _usb {
	_usb.used_size_ -= _item.size_;
	ds_list_delete(items_, ds_list_find_index(items_, _item));
}

with _item {
	instance_destroy();
}

return true;
