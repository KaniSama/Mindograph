/// @description Checks if the note can be grabbed (if it's not under other notes)

with (Notes) {
	for (var i = 0; i < ds_list_size(notes); i++) {
		ns = notes[| i];
		if (touched(ns.x, ns.y, ns.w, ns.h)) {
			//put_on_top(i);
			break;
		}
	}
}

return Notes.ns == id;