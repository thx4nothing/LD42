/// @description Insert description here
// if we are on torrents/download tab
if(selected_tabindex_ == 0) {
	draw_set_color(c_black);
	for(var i = 0; i < 10; i += 1) { //TODO: loop as long as we have items
		if(startY_ + ((height_ * i) + (hDist_ * i)) - scrollY > 50) {
			myY = startY_ + ((height_ * i) + (hDist_ * i)) - scrollY;
			draw_rectangle(250, myY, 932, myY + height_, true); // outline border
			draw_rectangle(250, myY, 402, myY + height_, true); // picture border
			draw_sprite(sPistol, image_index, 251, myY + 1); // picture
			draw_set_font(fntDownloadItemTitle);
			draw_text(403, myY, "Kingsman"); // Title
			draw_set_font(fntDownloadItemDescr);
			draw_text(403, myY + 22, "This is a basica description\nIt also Can display Newlines!");
			var inst = instance_create_layer(423, myY + height_ - 32, "DownloadElements", oLowQuality);
			//TODO: add attribute descr to button to know which item is clicked (lose_yourself_lowquality.movie)
			ds_list_add(myList, inst);
			inst = instance_create_layer(593, myY + height_ - 32, "DownloadElements", oMedQuality);
			//TODO: add attribute descr to button to know which item is clicked (lose_yourself_lowquality.movie)
			ds_list_add(myList, inst);
			inst = instance_create_layer(763, myY + height_ - 32, "DownloadElements", oHighQuality);
			//TODO: add attribute descr to button to know which item is clicked (lose_yourself_lowquality.movie)
			ds_list_add(myList, inst);
			//draw_rectangle(601, myY, 932, myY + height_, true);
		}//draw_rectangle(601, ((startY_ * i+1) + (hDist_*i), 932, 232, true);	
		
	}
}
else {
	// empty list if not empty
	if(ds_list_empty(myList) == false) {
		for(var i = 0;i < ds_list_size(myList); i++) {
			var item = ds_list_find_value(myList, i); // get item
			instance_destroy(item); // destroy item
			ds_list_delete(myList, i); // delete item from list
		}
	}
}

//draw_rectangle(250, startY_ + ((height_ * i) + (hDist_ * i)), 581, ((startY_ + height_) * (i+1)) + (hDist_ * i), true);
// ((startY_+height) * i+1) + (hDist_*i)