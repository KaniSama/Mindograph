/// @description draw
#macro TEXT = 0;
#macro SCRIPT = 1;

var n = ds_list_size(menu);

draw_set_color(c_ltgray);
for (var i = 0; i < n; i++) {
	draw_rectangle(x, y+i*menu_item_h, x+w, y+i*(menu_item_h+1), false);
	//draw_text(x+8, y+i*menu_item_h, menu[| i][TEXT]); 
}