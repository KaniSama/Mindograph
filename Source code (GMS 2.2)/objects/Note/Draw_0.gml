/// @description display note

if (drag) {
	draw_set_alpha(.5);
	draw_set_color(c_dkgray);
	draw_rectangle(x+3, y+3, x+w+3, y+h+3, false);
}

draw_set_alpha(1);

draw_set_color(make_color_rgb(250, 240, 190));
draw_rectangle(x, y, x+w, y+h, false);

/*draw_set_color(c_dkgray);
draw_rectangle(x, y, x+w, y+h, true);*/

draw_set_color(make_color_rgb(250, 250, 200));
draw_rectangle(x, y, x+w, y+header, false);

if (tempConnection!=-1 && instance_exists(tempConnection)) {
	draw_set_color(c_red);
	draw_line_width(x+w*.5, y+header*.5, tempConnection.x, tempConnection.y, 2);
}

/*if (!ds_list_empty(connections)) {
	for (var i = 0; i < ds_list_size(connections); i++) {
		draw_set_color(c_red);
		var ci = connections[| i];
		draw_line_width(x+w*.5, y+header*.5, ci.x+ci.w*.5, ci.y+ci.header*.5, 3);
	}
}*/


if (pinned) {
	//draw_set_color(c_red);
	//draw_circle(x+w*.5, y+header*.5, 9, false);
	draw_sprite_ext(sPin, 0, x+w*.5,y+header*.5, .5, 2, 90, c_black, .5);
	draw_sprite(sPin, 0, x+w*.5,y+header*.5);
}

draw_set_color(c_dkgray);
draw_text_ext(x+8, y+8+header, text, font_get_size(Font) * 1.5, w-16);