var _item = instance_create_layer(x,y,"Items", oItem);

with _item {
	name_ = "";
	summary_ = "";
	file_type_ = noone;
	file_quality_ = noone;
	size_ = 0;
	sprite_name_ = "";
	event_user(0);
}




return _item;