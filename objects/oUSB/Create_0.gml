/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

usb_index_ = instance_number(oUSB);
name_ = "USB #" + string(usb_index_);

items_ = ds_list_create();

max_size_ = 32000;
used_size_ = 0;