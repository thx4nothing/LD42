oSystemView.hdd_space_used_ -= oRecycleBin.garbage_size_;
oRecycleBin.garbage_size_ = 0;

with oItem {
	if location_ == location.recycle {
		instance_destroy();
	}
}