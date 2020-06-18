/// @description drag code n shit

#region dragControl
if (mouse_check_button_pressed(mb_left) && touched(x, y, w, h) && eligible()) {
	var i = ds_list_find_index(Notes.notes, id);
	put_on_top(i);

	if (mouse_check_button_pressed(mb_left) && touched(x, y, w, header)) {
		drag = true;
	
		xOffset = x - mouse_x;
		yOffset = y - mouse_y;
	}
}

if (mouse_check_button_released(mb_left)) drag = false;

if (drag && !pinned) {
	x = mouse_x + xOffset;
	y = mouse_y + yOffset;
}
#endregion

#region size
if (w != tw || h != th) {
	w += (tw - w) * .25;
	h += (th - h) * .25;
}
#endregion

#region connectControl
if ((keyboard_check_pressed(ord("L")) || pinned && mouse_check_button_pressed(mb_left))
		&& touched(x, y, w, h) && eligible()) {
	tempConnection = instance_create_layer(mouse_x, mouse_y, "Instances", TempConnect);
	tempConnection.parent = id;
}
#endregion

#region resizeControl
if (touched(x, y, tw, th) && eligible() && keyboard_check(ord("S")) && !pinned && mouse_check_button(mb_left)) {
	resize = true;
}
if (!mouse_check_button(mb_left) && resize) {
	resize = false;
}
if (resize) {
	tw = mouse_x - x;
	th = mouse_y - y;
}
#endregion

/*if (touched(x, y, w, header) && eligible()) {
	window_set_cursor(cr_drag);
} else {
	if (window_get_cursor() != cr_default)
		window_set_cursor(cr_default);
}*/