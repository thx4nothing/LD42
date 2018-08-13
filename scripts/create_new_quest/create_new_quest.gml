var _item_count = irandom_range(1,4);

var _task_list = ds_list_create();
repeat _item_count ds_list_add(_task_list, create_new_task());

var _reward_money = 0; //TODO formel (anzahl tasks, quali der items, etc)
ds_list_add(_task_list, _reward_money);

//list element 1-4 tasks, last element = money
return _task_list;