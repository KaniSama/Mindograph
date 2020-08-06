with (parent) {
	if (surface_exists(img)) {
		surface_set_target(img);
			draw_clear_alpha(c_white, 1);
		surface_reset_target();
	}
}