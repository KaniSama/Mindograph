/// @description finish loading notes

if (update_list) {
	ini_open(filename);
	
	for (var i = 0; i < ds_list_size(notes); i++) {
		var ni = notes[| i];
		
		// TODO: read and decode ds_map
		//var map = json_decode(ini_read_string("notes", string(i), "-1"));
		// TODO: transform map values into Note objects
		//var dsi = ds_list_find_index(Notes.notes_created_at, ni);
		
		ni.x = ini_read_real(string(i), "x", 0);//map[? "x"];
		ni.y = ini_read_real(string(i), "y", 0);//map[? "y"];
		ni.depth = ini_read_real(string(i), "depth", 0);//map[? "depth"];
		ni.pinned = ini_read_real(string(i), "pinned", 0);//map[? "pinned"];
		ni.tw = ini_read_real(string(i), "w", 0);//map[? "w"];
		ni.th = ini_read_real(string(i), "h", 0);//map[? "h"];
		
		ni.text = ini_read_string(string(i), "text", "No text");//map[? "text"];
		ni.displaytext = string_replace_all(ni.text, "<br>", "\n");
		
		var map = json_decode(base64_decode(ini_read_string(string(i), "connections", 0)));
		ni.connections = map[? "all"]
		
		Notes.notes_created_at[| i] = ni;
	}
	
	ini_close();
	
	update_list = false;
}