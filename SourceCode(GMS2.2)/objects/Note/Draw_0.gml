/// @description display note

if (in_camera(x, y, (tw+th)*.5)) {
	if (drag) {
		draw_set_alpha(.5);
		draw_set_color(c_dkgray);
		draw_rectangle(x+3, y+3, x+w+3, y+h+3, false);
	}

	draw_set_alpha(1);

	draw_set_color(make_color_rgb(250, 240, 190));
	draw_rectangle(x, y, x+w, y+h, false);

	/*draw_set_color(make_color_rgb(250, 250, 200));
	draw_rectangle(x, y, x+w, y+header, false);*/

	if (instance_exists(tempConnection) && tempConnection!=-1) {
		draw_set_color(c_red);
		draw_line_width(x+w*.5, y+header*.5, tempConnection.x, tempConnection.y, 2);
	}


	if (pinned) {
		//draw_set_color(c_red);
		//draw_circle(x+w*.5, y+header*.5, 9, false);
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

	draw_set_color(c_dkgray);
	draw_text_ext(x+8, y+8+header, text, font_get_size(Font) * 1.5, w-16);
}