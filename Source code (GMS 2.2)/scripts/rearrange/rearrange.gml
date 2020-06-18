/// @description Rearranges the notes in the list

with (Notes) {
	for (var i = 0; i < ds_list_size(notes); i++) {
		var nots = notes[| i];
		with (nots) {
			depth = i;
		}
	}
}