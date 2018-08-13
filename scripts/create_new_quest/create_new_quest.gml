var _item_count = irandom_range(2,4);

var _task_list = ds_list_create();

var _quest_giver = get_unique_person_name();
show_debug_message(_quest_giver);
ds_list_add(_task_list, _quest_giver);

var _ex_names = ds_list_create();
var _whole_quali = 0;

repeat _item_count {
	var _task = noone;
	do {
		_task = create_new_task();
	} until (ds_list_find_index(_ex_names, ds_map_find_value(_task, "name")) == -1);
	ds_list_add(_ex_names, ds_map_find_value(_task, "name"));
	_whole_quali += ds_map_find_value(_task, "quality");
	ds_list_add(_task_list, _task); 
}

var _reward_money = oGameManager.baseMoneyReward * _item_count * _whole_quali + irandom_range(-200, oGameManager.baseMoneyReward); 
ds_list_add(_task_list, _reward_money);

//list = Quest giver, element 2-5 tasks, last element = money

ds_list_add(oTaskList.quests_, _task_list);
return _task_list;