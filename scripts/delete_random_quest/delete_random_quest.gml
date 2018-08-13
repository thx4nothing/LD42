var _size = ds_list_size(oTaskList.quests_);

if _size <= 1 return;

var _count = irandom_range(0,1);

if _count == 1 {
	var _id = irandom_range(0, _size - 1);
	ds_list_delete(oTaskList.quests_, _id);
}