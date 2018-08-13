/// @description clock tick

datetime_ = date_inc_second(datetime_, 1);
if date_get_weekday(datetime_) == 6 {
	oSystemView.money_ -= rent_to_pay_;
}
if oSystemView.money_ < 0 {
	lose_ = true;
}

alarm[0] = global.one_second / 60;