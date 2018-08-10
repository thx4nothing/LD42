/// @description init size of everything
event_inherited();
///Properties
ideal_width = 0;
ideal_height = 540;
zoom = 1;
max_zoom = 1;
use_sub_pixels = false;
 
//Aspect ratio
aspect_ratio = display_get_width() / display_get_height();

ideal_width = ideal_width == 0 ? round(ideal_height * aspect_ratio) : ideal_width;
ideal_height = ideal_height == 0 ? round(ideal_width / aspect_ratio) : ideal_height;
 
ideal_width = round(ideal_width);
ideal_height = round(ideal_height);
 
if(ideal_width & 1) ideal_width++;
if(ideal_height & 1) ideal_height++;

max_zoom = aspect_ratio < 1 ? floor(display_get_height() / ideal_height) : floor(display_get_width() / ideal_width);

//Setup all the view ports so I don't have to.
global.Main_Camera = camera_create_view(0, 0, ideal_width, ideal_height, 0, noone, -1, -1, 0, 0);
camera_set_view_size(global.Main_Camera, ideal_width, ideal_height);
 
for(var i = 1; i <= room_last; i++) {
  if(room_exists(i)) {    
        room_set_view_enabled(i, true);
        room_set_viewport(i, 0, true, 0, 0, ideal_width, ideal_height);
        room_set_camera(i, 0, global.Main_Camera);
  }
}
 
surface_resize(application_surface, ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);
window_set_size(ideal_width * zoom, ideal_height * zoom);

display_write_spec(display.view);
alarm[0] = 1; //Center Window