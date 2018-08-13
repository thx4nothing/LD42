randomize();

global.one_second = game_get_speed(gamespeed_fps);

weekday_list_ = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", ];

date_set_timezone(timezone_utc);
datetime_ = date_create_datetime(2018, 1, 1, 8, 0, 0);
alarm[0] = global.one_second;

rent_to_pay_ = 500;
newday_ = false;
lose_ = false;

baseMovieSize = 1024;
baseAudioSize = 32;
baseGameSize = 4096;
baseMoneyReward = 128;

load_json_file();

alarm[1] = 1;