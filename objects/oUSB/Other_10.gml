/// @description context menu

draw_set_font(fntDesktopText);
var _quest_size = ds_list_size(oTaskList.quests_);
for (var i = 0; i < _quest_size; i++;) {
	var _curr = ds_list_find_value(oTaskList.quests_, i);
	draw_sprite(sContextItem, 0, mx_, my_ + (i * 24));
	draw_text(mx_ + 6, my_ + (i * 24) + 6, "Send to " + ds_list_find_value(_curr, 0));
}
draw_sprite(sContextItem, 0, mx_ , my_ + (_quest_size * 24));
draw_text(mx_ + 6, my_ + (_quest_size * 24) + 6, "Delete all");