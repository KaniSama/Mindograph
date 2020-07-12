/// @description Loads the custom ini
/// @param filename The name of the file to load

ini_close();

with (Notes) {
	var fn = filename;
	if (file_exists(fn)) {
		ini_open(fn);
	
		for (var i = 0; i < ds_list_size(notes); i++) {
			with (notes[| i]) instance_destroy();
		}
	
		ds_list_clear(notes);
		ds_list_clear(notes_created_at);
	
		var ls = ini_read_real("notes_list_size", "size", 0);
		for (var i = 0; i < ls; i++) {
			//var ni = notes[| i];
			notes[| i] = instance_create_layer(0, 0, "Instances", Note);
			notes[| i].drag = false;
			//ds_list_add(notes_created_at, notes[| i]);
		}
	
		update_list = true;
	
		ini_close();
	} else {
		show_message("File with name \"" + fn + "\" does not exist");
	}
}