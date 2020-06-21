with (Notes) {
	ds_list_clear(notes);
	ds_list_clear(notes_created_at);
	
	filename = "saveBkup.mindmap";
}

with (Note) {
	instance_destroy();
}