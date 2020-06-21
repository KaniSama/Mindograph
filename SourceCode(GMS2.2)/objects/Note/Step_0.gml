/// @description drag code n shit

if (!keyboard_check(vk_space)) {

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
if (!pinned && mouse_check_button_pressed(mb_left) && eligible() && (
		touched(x, y, tw, th) && keyboard_check(ord("S")) || touched(x + tw - 10, y + th - 10, 10, 10)
)) {
	resize = true;
}
if (!mouse_check_button(mb_left) && resize) {
	resize = false;
}
if (resize) {
	tw = clamp(mouse_x - x, 48, 1000);
	th = clamp(mouse_y - y, 48, 1000);
}
#endregion

}