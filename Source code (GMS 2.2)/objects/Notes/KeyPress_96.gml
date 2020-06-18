/// @description create note

var newNote = instance_create_layer(mouse_x - 60, mouse_y, "Instances", Note);
ds_list_add(notes, newNote);
ds_list_add(notes_created_at, newNote);
var i = ds_list_find_index(notes, newNote);
put_on_top(i);

with (newNote) {
	/*x = mouse_x - w * .5;
	y = mouse_y - header * .5;*/
	
	xOffset = -w * .5;
	yOffset = -header * .5;
}