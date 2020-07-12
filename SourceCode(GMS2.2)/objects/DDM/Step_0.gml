/// @description 

var n = ds_list_size(menu);

for (var i = 0; i < n; i++) {
	var tx = x;
	var ty = y+i*menu_item_h;
	var tw = x+w;
	
	if (mouse_check_button_released(mb_left)) {
		if (gui_touched(tx, ty, tw-x, menu_item_h)) {
			script_execute(ds_map_find_value(menu[| i], "func"));
		}
		
		instance_destroy();
	}
}

if (mouse_check_button_pressed(mb_right)) instance_destroy();