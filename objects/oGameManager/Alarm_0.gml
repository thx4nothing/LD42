/// @description clock tick

newday_ = false;
datetime_ = date_inc_second(datetime_, 1);

if date_get_hour(datetime_) == 16 {
	delete_random_quest();
	if ds_list_size(oTaskList.quests_) < 5 create_new_quest();
	if (ds_list_size(oTaskList.quests_) < 5 && irandom_range(0,10) < 8) create_new_quest();
	newday_ = true;
	datetime_ = date_inc_hour(datetime_, 16);
	alarm[0] = global.one_second * 3;
	exit;
}

if date_get_weekday(datetime_) == 0 && paid paid = false;
if date_get_weekday(datetime_) == 6 && !paid {
	oSystemView.money_ -= rent_to_pay_;
	rent_to_pay_ *= 1 + random_range(0.05, 0.1);
	paid = true;
}
if oSystemView.money_ < 0 {
	lose_ = true;
}

alarm[0] = global.one_second / 60;