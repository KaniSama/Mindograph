/// @description Window resize code (TODO)

// View zoom
var wheel = mouse_wheel_down() - mouse_wheel_up();

camX = camera_get_view_x(cam);
camY = camera_get_view_y(cam);

camW = camera_get_view_width(cam);
camH = camera_get_view_height(cam);

win_wid=window_get_width();
win_hgt=window_get_height();
aspect=win_wid/win_hgt;
scale = 1;

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

// window resize code
if ( window_get_width() != global.Window_Width ||
    window_get_height() != global.Window_Height )
{
	if win_wid/win_hgt>=aspect {
	    //wider
	    scale=win_wid/RW;
	} else {
	    //taller
	    scale=win_hgt/RH;
	}
	view_hport[0]=win_hgt;
	view_wport[0]=win_wid;
	camW = win_wid/scale;
	camH = win_hgt/scale;
	display_set_gui_size(window_get_width(), window_get_height());
	/*
	show_debug_message("window manually resized")

	view_set_hport(view_current, window_get_height());
	view_set_wport(view_current, window_get_width());*/
   
	surface_resize(application_surface, view_wport[0], view_hport[0]);
	/*camW = view_wport[0];
	camH = view_hport[0];
   */
	global.Window_Width = window_get_width();
	global.Window_Height = window_get_height();
}

if (keyboard_check_pressed(vk_home)) {
	if (camH != RH || camW != RW) {
		camW = win_wid/scale;
		camH = win_hgt/scale;
	
		camX = mouse_x - camW *.5;
		camY = mouse_y - camH *.5;
	}
}

camera_set_view_size(cam, camW, camH);
camera_set_view_pos(cam, camX, camY);

if (keyboard_check_pressed(ord("F"))) fps_show = !fps_show;

if (keyboard_check(vk_space) && mouse_check_button_pressed(mb_left)) {
	drx = mouse_x;
	dry = mouse_y;
	
	drag = true;
}
if (keyboard_check_pressed(vk_space) && mouse_check_button(mb_left)) {
	drx = mouse_x;
	dry = mouse_y;
	
	dragspace = true;
}
if (keyboard_check_released(vk_space)) {
	dragspace = false;
}
if (drag || dragspace) {
	var _x = drx - (mouse_x - camera_get_view_x(cam));
	var _y = dry - (mouse_y - camera_get_view_y(cam));

	camera_set_view_pos(cam, _x, _y);
}
if (mouse_check_button_released(mb_left) || mouse_check_button_released(mb_middle)) {
	drag = false;
}

if (mouse_check_button_pressed(mb_right)) {
	global.u_el = true;
	
	with (Note) {
		if (touched(x, y, w, h)) {
			global.u_el = false;
		}
	}
	
	if (global.u_el) {
		var ddm = instance_create_layer(window_mouse_get_x(), window_mouse_get_y(), "Instances", DDM);
		
		var k = 0;
		ddm.menu[| k] = ds_map_create();
		ds_map_add(ddm.menu[| k], "text", "New note");
		ds_map_add(ddm.menu[| k], "func", create_note);
		
		/*
		k++;
		ddm.menu[| k] = ds_map_create();
		ds_map_add(ddm.menu[| k], "text", "New whiteboard");
		ds_map_add(ddm.menu[| k], "func", create_wb);*/
	}
}

