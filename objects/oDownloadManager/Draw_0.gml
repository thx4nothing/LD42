/// @description 
draw_self();

var _top = y + 10;
var _left = x + 10;

draw_set_color(c_black);
var i = 0;
with oItem {
	if location_ == location.downloadmanager {
		draw_text(_left, _top + i * 24, name_ + ": "+ string(progress_) + "MB/" + string(size_) + "MB");
		i++;
	}
}