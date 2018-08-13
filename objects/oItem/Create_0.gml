event_inherited();

enum type {
	movie,
	audio,
	game
}
enum quality {
	low,
	med,
	high
}

enum status {
	downloading,
	finished
}

enum location {
	desktop,
	usb,
	recycle
}


name_ = "";
summary_ = "";
file_type_ = noone;
file_quality_ = noone;
size_ = 0;
sprite_name_ = "";

progress = 0;

location_ = location.desktop;

identifier = "item";

context_ = false;