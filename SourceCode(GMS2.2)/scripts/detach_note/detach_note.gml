global.u_id = parent;
with (Note) {
	if (id == global.u_id) ds_list_clear(connections);
	else if (ds_list_find_index(connections, ds_list_find_index(Notes.notes_created_at, global.u_id)) != -1) {
		ds_list_delete(connections, ds_list_find_index(connections, ds_list_find_index(Notes.notes_created_at, global.u_id)));
	}
}