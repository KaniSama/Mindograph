/// @description 

/*draw_set_halign(fa_right);
draw_text(RW - 32, 16, string(camW) + "\n" + string(camH) + "# #" + string(fps_real));*/

if (fps_show) {
	draw_set_halign(fa_right);
	draw_set_color(c_dkgray);
	draw_text(display_get_gui_width() - 8, 8, string(fps_real) + "\n" + string(fps));
	draw_set_halign(fa_left);
}