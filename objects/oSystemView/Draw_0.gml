/// @description Insert description here
// You can write your code in this editor
draw_self();

var _top = y + 10;
var _left = x + 10;

draw_set_color(c_black);

draw_text(_left, _top, "Local Storage Space: " + string(hdd_space_used_) + "MB/" + string(hdd_space_max_) + "MB");
draw_text(_left, _top + 24, "Internet Volume: " + string(data_volume_used_) + "MB/" + string(data_volume_max_) + "MB");
draw_text(_left, _top + 48, "Internet Speed: " + string(internet_speed_) + "MB/s");

