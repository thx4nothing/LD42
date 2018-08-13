/// @description clock
draw_set_font(fntDesktopText);
draw_set_color(c_white);



draw_text(880, 486, weekday_list_[date_get_weekday(datetime_)]);

draw_text(867, 501, date_date_string(datetime_));
draw_text(875, 516, date_time_string(datetime_));

if lose_ {
	draw_sprite(sLose, 0, 0, 0);
}