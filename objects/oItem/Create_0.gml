//name
//quality
//size
//type enum
popup_ = false

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

file_type_ = type.movie;
size_ = 1200;
file_quality_ = quality.high;

switch file_type_ {
	case type.movie:
		sprite_index = sMovie;
		name_ = get_random_movie_name();
		break;
	case type.audio:
		sprite_index = sMovie;
		name_ = get_random_movie_name();
		break;
	case type.game:
		sprite_index = sMovie;
		name_ = get_random_movie_name();
		break;
}