/// @description 
var k = display_get_gui_height() / array_length_1d(colors_col);
if (gui_touched(display_get_gui_width()-16, 0, 16, display_get_gui_height())) {
	for (var i = 0; i < array_length_1d(colors_col); i++) {
		if (gui_touched(display_get_gui_width()-16, i*k, 16, k)) {
			color = colors_col[i];
		}
	}
}