items_ = ds_list_create()
ds_list_add(items_, instance_create_layer(0,0,"Items", oRecycleBin))
ds_list_add(items_, instance_create_layer(0,78,"Items", oUSB))

ds_list_add(items_, instance_create_layer(0,78*2,"Items", oUSB))

var _item = get_random_item();
ds_list_add(items_, _item);

with _item {
	x = irandom_range(0, 960-64);
	y = irandom_range(0, 540-64-78)
}
copy_to_usb(_item, 1);

var _item = get_random_item();
ds_list_add(items_, _item);

with _item {
	x = irandom_range(0, 960-64);
	y = irandom_range(0, 540-64-78)
}
copy_to_usb(_item, 0);

var _item = get_random_item();
ds_list_add(items_, _item);

with _item {
	x = irandom_range(0, 960-64);
	y = irandom_range(0, 540-64-78)
}
copy_to_usb(_item, 1);

var _item = get_random_item();
ds_list_add(items_, _item);

with _item {
	x = irandom_range(0, 960-64);
	y = irandom_range(0, 540-64-78)
}
copy_to_usb(_item, 0);

//TODO adjust position