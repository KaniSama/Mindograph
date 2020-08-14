/// @description Clean up

global.u_id = id;
with (Note) {
	if (ds_list_find_index(connections, ds_list_find_index(Notes.notes_created_at, global.u_id)) != -1) {
		ds_list_delete(connections, ds_list_find_index(connections, ds_list_find_index(Notes.notes_created_at, global.u_id)));
	}
}

ds_list_destroy(connections);
ds_list_delete(Notes.notes_created_at, ds_list_find_index(Notes.notes_created_at, id));
ds_list_delete(Notes.notes, ds_list_find_index(Notes.notes, id));

if (surface_exists(img)) surface_free(img);