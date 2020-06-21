/// @description The script for attaching two notes together

with (Note) {
	if (touched(x, y, tw, th) && eligible() && instance_exists(TempConnect)) {
		if (id != TempConnect.parent)
			if (ds_list_find_index(TempConnect.parent.connections, ds_list_find_index(Notes.notes_created_at, id)) < 0) {
				ds_list_add(TempConnect.parent.connections, ds_list_find_index(Notes.notes_created_at, id));
			}
	}
}

instance_destroy();