/// @description open window with items

event_inherited();

with oUSBWindow {
	if usb_object_ == other.id {
		var _item_size = ds_list_size(usb_object_.items_);
		for (var i = 0; i < _item_size; i++;) {
			var _curr = ds_list_find_value(usb_object_.items_, i);
			_curr.visible = false;
		}
		instance_destroy();
		exit;
	}
}
with instance_create_layer(50, 50, "Windows", oUSBWindow) {
	usb_object_ = other.id;
	var _item_size = ds_list_size(usb_object_.items_);

	for (var i = 0; i < _item_size; i++;) {
		var _curr = ds_list_find_value(usb_object_.items_, i);
		_curr.visible = true;
		_curr.x = x + 6 + i * 64;
		_curr.y = y + 6;
	}
}