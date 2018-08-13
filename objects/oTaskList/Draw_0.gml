/// @description 

if !visible exit;
draw_self();


draw_set_color(c_black);

var _quests_size = ds_list_size(quests_);

draw_text(x + 8, y + 8, "Quests: " +  string(_quests_size) + "/" + string(max_quests));

var _prev_height = 0;

for (var i = 0; i < _quests_size; i++;) {
	var _curr = ds_list_find_value(quests_, i);
	var _left = x + 10;
	var _top = y + 60 + (_prev_height * 16) + i * 3;
	
	var _quest_giver = ds_list_find_value(_curr, 0);
	var _reward_money = ds_list_find_value(_curr, ds_list_size(_curr) - 1);
	
	draw_text(_left, _top, _quest_giver);
	draw_text(_left + 250, _top, "Reward: $" + string(_reward_money));
	
	var _task_size = ds_list_size(_curr) - 2;
	for (var j = 1; j < _task_size; j++;) {
		var _curr_task = ds_list_find_value(_curr, j);
		var _quali = ds_map_find_value(_curr_task, "quality");
		_quali = (_quali == 0 ? "low" : (_quali == 1 ? "medium" : "high"));
		draw_text(_left + 20, _top + (j * 16), "I want " + ds_map_find_value(_curr_task, "name") + " in " + _quali + " quality!" );
	}
	_prev_height += _task_size;
}


draw_set_color(c_white);