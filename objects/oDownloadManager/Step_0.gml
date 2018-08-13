/// @description download

with oItem {
	if location_ == location.downloadmanager {
		if (oSystemView.hdd_space_max_ - oSystemView.hdd_space_used_) >= oSystemView.internet_speed_ {
			oSystemView.hdd_space_used_ += oSystemView.internet_speed_;
			progress_ += oSystemView.internet_speed_;
			show_debug_message("progress: " + string(progress_) + "/" + string(size_));
			if progress_ >= size_ {
				progress_ = size_;
				location_ = location.desktop;
				visible = true;
			}
		}
	}
}