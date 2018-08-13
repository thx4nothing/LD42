/// @description download
var _downloads_active = 0;
with oItem if location_ == location.downloadmanager _downloads_active++;
		
with oItem {
	if location_ == location.downloadmanager {
		var _speed_now = oSystemView.internet_speed_ / _downloads_active;
		if (oSystemView.hdd_space_max_ - oSystemView.hdd_space_used_) >= _speed_now {
			if (oSystemView.data_volume_max_ - oSystemView.data_volume_used_) >= _speed_now {
				oSystemView.hdd_space_used_ += _speed_now;
				progress_ += _speed_now;
				oSystemView.data_volume_used_ += _speed_now;
				if progress_ >= size_ {
					progress_ = size_;
					location_ = location.desktop;
					visible = true;
				}
			}
		}
	}
}