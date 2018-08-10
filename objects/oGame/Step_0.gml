if paused_ {

}


CHECK_START_PRESSED {
	if paused_ {
		paused_ = false;
		if sprite_exists(paused_sprite) sprite_delete(paused_sprite);
		instance_activate_all();
	} else {
		paused_ = true;
		paused_sprite = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0);
		instance_deactivate_all(true);
	}
}


//screen freeze/hitstop
if(freeze){
    freezeDur --;
    if(freezeDur <= 0){
        freezeDur = 5;
        freeze = false;
    }
}