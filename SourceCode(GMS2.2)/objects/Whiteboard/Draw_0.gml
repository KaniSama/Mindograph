/// @description display note

if (in_camera(x, y, (tw+th)*.5)) {
	if (drag) {
		draw_set_alpha(.5);
		draw_set_color(c_dkgray);
		draw_rectangle(x+3, y+3, x+w+3, y+h+3, false);
	}

	draw_set_alpha(1);

	draw_set_color(c_white);
	draw_rectangle(x, y, x+w, y+h, false);

	if (instance_exists(tempConnection) && tempConnection!=-1  && !touched(x, y+header, tw, th-header)) {
		draw_set_color(c_red);
		draw_line_width(x+w*.5, y+header*.5, tempConnection.x, tempConnection.y, 2);
	}


	if (pinned) {
		draw_sprite_ext(sPin, 0, x+w*.5,y+header*.5, .5, 2, 90, c_black, .5);
		draw_sprite(sPin, 0, x+w*.5,y+header*.5);
	} else {
		draw_set_color(c_dkgray);
		var offset = false;
		draw_set_alpha (.5);
		for (var i = 0; i < w div 8 - 1; i++) {
			draw_rectangle(x + (1 + i) * 8 - 1, y + 6 + 6 * offset - 1, x + (1 + i) * 8 + 1, y + 6 + 6 * offset + 1, false);
			offset = !offset;
		}
		draw_rectangle(x + w - 4, y + h - 4, x + w - 2, y + h - 2, false);
		draw_rectangle(x + w - 4, y + h - 10, x + w - 2, y + h - 8, false);
		draw_rectangle(x + w - 10, y + h - 4, x + w - 8, y + h - 2, false);
		draw_set_alpha(1);
	}

	if (mouse_check_button(mb_left) && touched(x, y+header, tw, th) && eligible()) {
		if (surface_exists(img)) {
			draw_set_color(Notes.color);
			surface_set_target(img);
				
				draw_line_width(mouse_x-x, mouse_y-y-header, mouse_xprevious-x, mouse_yprevious-y-header, 3);
				
			surface_reset_target();
		}
	}
	mouse_xprevious = mouse_x;
	mouse_yprevious = mouse_y;

	draw_set_color(c_white);
	if (surface_exists(img)) draw_surface(img, x, y+header);
	//draw_text_ext(x+8, y+8+header, text, font_get_size(Font) * 1.5, w-16);
}