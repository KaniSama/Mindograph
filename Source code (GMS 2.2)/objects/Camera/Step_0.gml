/// @description Window resize code (TODO)

/*var is_fullscreen = window_get_fullscreen();

if ( !is_fullscreen )
{
    if ( window_get_width() != global.Window_Width ||
         window_get_height() != global.Window_Height )
    {
        //show_debug_message("window manually resized")
   
        view_wport[0] = window_get_width();
        view_hport[0] = window_get_height();
   
        surface_resize(application_surface, view_wport[0], view_hport[0]);
   
        global.Window_Width = window_get_width();
        global.Window_Height = window_get_height();
    }
}*/

// View zoom
var wheel = mouse_wheel_down() - mouse_wheel_up();

var camX = camera_get_view_x(cam);
var camY = camera_get_view_y(cam);

camW = camera_get_view_width(cam);
camH = camera_get_view_height(cam);

if (wheel != 0) {
	wheel *= .1;
	
	//add to size
	var addW = camW * wheel;
	var addH = camH * wheel;
	
	camW += addW;
	camH += addH;
	
	// pos
	camX -= addW *.5;
	camY -= addH *.5;
}

/*camW = clamp(camW, 640, 4500);
camH = clamp(camH, 320, 2600);*/

if (keyboard_check_pressed(vk_home)) {
	if (camH != RH || camW != RW) {
		camH = RH;
		camW = RW;
	
		camX = mouse_x - camW *.5;
		camY = mouse_y - camH *.5;
	}
}

/*if (abs(camW - RW) < .1) camW = RW;
if (abs(camH - RH) < .1) camH = RH;*/

camera_set_view_pos(cam, camX, camY);
camera_set_view_size(cam, camW, camH);