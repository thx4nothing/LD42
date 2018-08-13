var _item_count = irandom_range(2,5);

show_debug_message(_item_count);

var _task_list = ds_list_create();

var _quest_giver = "Otto"; //TODO random Namelist, no same-name questgivers at the same time
ds_list_add(_task_list, _quest_giver);
repeat _item_count ds_list_add(_task_list, create_new_task()); //TODO remove duplicate requests

var _reward_money = 0; //TODO formel (anzahl tasks, quali der items, etc)
ds_list_add(_task_list, _reward_money);

//list = Quest giver, element 2-5 tasks, last element = money
return _task_list;