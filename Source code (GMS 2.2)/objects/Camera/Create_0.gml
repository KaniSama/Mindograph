/// @description Init camera

view_enabled = true;
view_visible[0] = true;

RW = 1200;
RH = 720;

RS = 1; // Resolution Scale

cam = camera_create_view(0, 0, RW, RH);
view_set_camera(0, cam);

window_set_size(RW * RS, RH * RS);
surface_resize(application_surface, RW, RH);

window_set_position(40, window_get_height()*.15);

display_set_gui_size(RW, RH);

drx = 0;
dry = 0;
drag = false;
dragspace = false;

fps_show = false;

/*global.Window_Width = window_get_width();
global.Window_Height = window_get_height();*/