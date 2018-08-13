//@arg1 usb
//@arg2 quest

var _usb = argument0;
var _quest = argument1;

var _solved = 0;

var _quest_size = ds_list_size(_quest);
for (var j = 1; j < _quest_size - 1; j++;) {
	var _usb_items_size = ds_list_size(_usb.items_);
	for (var i = 0; i < _usb_items_size; i++;) {
		var _curr = ds_list_find_value(_usb.items_, i);
		var _curr_quest = ds_list_find_value(_quest, j);
		var _usb_name = _curr.name_;
		var _quest_name = ds_map_find_value(_curr_quest, "name");
		var _usb_quali = _curr.file_quality_;
		var _quest_quali = ds_map_find_value(_curr_quest, "quality");
		
		if _usb_name == _quest_name && _usb_quali == _quest_quali {
			_solved++;
			break;
		}
	}
}

if _solved == (_quest_size - 2) {
	var _reward = ds_list_find_value(_quest, _quest_size - 1);
	oSystemView.money_ += _reward;
	ds_list_delete(oTaskList.quests_, ds_list_find_index(oTaskList.quests_, _quest));
	return true;
} else return false;