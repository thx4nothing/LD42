/// @description draw popup, text, context menu
draw_self();
draw_set_font(fntDesktopText);
var _display_name = name_;
_display_name = string_length(name_) > 9 ? string_delete(_display_name, 6, 500) + "..." : _display_name;
draw_text(x,y + 64, _display_name);

if popup_ event_user(1);
if mx_ > 0 && my_ > 0 event_user(0);
