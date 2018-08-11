var _movie_alphabet = ["test", "123"];
var _name = "";

repeat (2)
	_name += _movie_alphabet[random(array_length_1d(_movie_alphabet))];
//TODO: not contain check
return _name;