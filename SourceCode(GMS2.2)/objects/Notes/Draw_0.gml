/// @description draw note connections

for (var i = 0; i < ds_list_size(notes); i++) {
	if (instance_exists(notes[| i])) {
		var ni = notes[| i];
	
		if (!ds_list_empty(ni.connections)) {
			for (var j = 0; j < ds_list_size(ni.connections); j++) {
				draw_set_color(c_red);
				draw_set_alpha(.5);
				var cj = notes_created_at[| ni.connections[| j]];
				draw_line_width(ni.x+ni.w*.5, ni.y+ni.header*.5, cj.x+cj.w*.5, cj.y+cj.header*.5, 3);
			}
		}
	}
}