/// @description draw virtual keys

draw_set_alpha(.75);

draw_sprite(sIcons, 0, 0, 0);
draw_sprite(sIcons, 1, 32, 0);
draw_sprite(sIcons, 2, 64, 0);

var width = 16;// gui_touched(display_get_gui_width()-16, 0, display_get_gui_width(), display_get_gui_height())? 32: 16;

if (instance_exists(Whiteboard)) {
	var k = display_get_gui_height() / array_length_1d(colors_col);
	for (var i = 0; i < array_length_1d(colors_col); i++) {
		draw_set_color(colors_col[i]);
		draw_rectangle(display_get_gui_width(), i*(k), display_get_gui_width()-width, (i+1)*k, false);
		if (color == colors_col[i]) {
			draw_set_color(c_black);
			draw_rectangle(display_get_gui_width()-(width)-2, i*k-4, display_get_gui_width()-(width*2)-4, (i+1)*k+4, false);
			draw_set_color(color);
			draw_rectangle(display_get_gui_width()-(width)-4, i*k-2, display_get_gui_width()-(width*2)-2, (i+1)*k+2, false);
		}
	}
}