/// @description draw

var n = ds_list_size(menu);
draw_set_alpha(1);

for (var i = 0; i < n; i++) {
	var tx = x;
	var ty = y+i*menu_item_h;
	var tw = x+w;
	var th = y+(i+1)*(menu_item_h);
	
	if (gui_touched(tx, ty, tw-x, th-y)) {
		draw_set_color(c_white);
	} else {
		draw_set_color(c_ltgray);
	}
	
	draw_rectangle(tx, ty, tw, th, false);
	draw_set_color(c_dkgray);
	draw_text(x+8, y+i*menu_item_h+8, ds_map_find_value(menu[| i], "text"));
	//draw_text(x+8, y+i*menu_item_h, menu[| i][TEXT]); 
}