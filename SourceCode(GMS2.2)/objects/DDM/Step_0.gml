/// @description 

var n = ds_list_size(menu);

for (var i = 0; i < n; i++) {
	var tx = x;
	var ty = y+i*menu_item_h;
	var tw = x+w;
	var th = y+(i+1)*(menu_item_h);
	
	if (mouse_check_button_released(mb_left)) {
		if (gui_touched(tx, ty, tw-x, th-y)) {
			script_execute(ds_map_find_value(menu[| i], "func"));
		}
		
		instance_destroy();
	}
}

if (mouse_check_button_pressed(mb_right)) instance_destroy();