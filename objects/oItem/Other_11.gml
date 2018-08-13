/// @description popup

var _mx = mouse_x;
var _my = mouse_y + 20;
_mx = (960 - _mx) < 256 ? 960 - 256 : _mx;
_my = (540 - _my) < 96 ? 540 - 96 : _my;

draw_sprite(sPopup, 0, _mx, _my)

draw_set_color(c_black);
draw_set_font(fntDesktopText);
draw_text(_mx + 4, _my + (0 * 24) + 4, "Name: " + name_);
draw_text(_mx + 4, _my + (1 * 24) + 4, "Type: " + ((file_type_ == type.movie) ? "Movie" : ((file_type_ == type.audio) ? "Audio" : "Game")));
draw_text(_mx + 4, _my + (2 * 24) + 4, "Quality: " + ((file_quality_ == quality.low) ? "Low" : ((file_quality_ == quality.med) ? "Medium" : "High")));
draw_text(_mx + 4, _my + (3 * 24) + 4, "Size(MB): " + string(size_));
draw_set_color(c_white);