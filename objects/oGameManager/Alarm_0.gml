/// @description clock tick

datetime_ = date_inc_second(datetime_, 1);
if date_get_weekday(datetime_) == 6 {}
alarm[0] = global.one_second / 60;