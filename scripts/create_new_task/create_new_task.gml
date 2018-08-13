var _requested_item = noone;

var _type = irandom_range(0,2);
var _list = noone;
switch _type {
	case type.movie:
		_list = oGameManager.movie_list_;
		break;
	case type.audio:
		_list = oGameManager.audio_list_;
		break;
	case type.game:
		_list = oGameManager.game_list_;
		break;
}
var _list_size = ds_list_size(_list);
_requested_item = ds_list_find_value(_list, irandom_range(0, _list_size - 1));

return _requested_item;