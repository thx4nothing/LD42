//@arg1 item

var _item = argument0;

with _item {
	location_ = location.recycle;
	visible = false;
	oRecycleBin.garbage_size_ += size_;
}
