/// @description Context

draw_set_font(fntDesktopText);
var _usbs = instance_number(oUSB);
for (var i = 0; i < _usbs; i++;) {
	draw_sprite(sContextItem, 0, mx_ - 6, my_ + (i * 24) - 6);
	draw_text(mx_, my_ + (i * 24), "Copy to USB #" + string(i + 1));
}

draw_sprite(sContextItem, 0, mx_ - 6, my_ + (_usbs * 24) - 6);
draw_text(mx_, my_ + (_usbs * 24), "Delete");