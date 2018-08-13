var _name = "";

var _name_list = ["Maybell", "Cassi", "Rey", "Matilda", "Ezekiel", "Maira", "Tiara", "Chu", "Marielle", "Sima", "Daniel", "Roscoe", "Beryl", "Harland", "Marcie", "Lora", "Wenona", "Darryl", "Mandie", "Lela", "Lorine", "Mike", "Cleta", "Elidia", "Corina", "Brande", "Earleen", "Magaly", "Leticia", "Kaitlin", "Tena", "Karole", "Beatris", "Jacqueline", "Lynna", "Amberly", "Georgia", "Maureen", "Jeff", "Alba", "Altagracia", "Sachiko", "Marin", "Hannah", "Alise", "Gregorio", "Geneva", "Mirtha", "Vera", "Laurie"];
var _size = array_length_1d(_name_list);

var _ex_names = ds_list_create();

for (var i = 0; i < ds_list_size(oTaskList.quests_); i++){
	var _curr = ds_list_find_value(oTaskList.quests_, i);
	ds_list_add(_ex_names, ds_list_find_value(_curr, 0));
}

do {
	_name = _name_list[irandom_range(0, _size-1)];
} until (ds_list_find_index(_ex_names, _name) == -1);

return _name;