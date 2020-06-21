with (Notes) {
	var savefile = filename;
	ini_close();
	if (!ds_list_empty(notes)) {
		var ntemp = ds_list_create();
		ds_list_copy(ntemp, notes_created_at);
		
		if (file_exists(savefile)) {
			file_delete(savefile);
		}
			
			ini_open(savefile);			
		
			for (var i = 0; i < ds_list_size(ntemp); i++) {
				var li = ntemp[| i];
				
				ini_write_real(i, "x", li.x);
				ini_write_real(i, "y", li.y);
				ini_write_real(i, "w", li.tw);
				ini_write_real(i, "h", li.th);
				ini_write_real(i, "depth", li.depth);
				ini_write_real(i, "pinned", li.pinned);
				
				ini_write_string(i, "text", li.text);
				
				var dsi = ds_map_create();
				ds_map_add_list(dsi, "all", li.connections);
				
				ini_write_string(i, "connections", base64_encode(json_encode(dsi)));
			}
			
			ini_write_real("notes_list_size", "size", ds_list_size(ntemp));
			ini_close();
	}
}