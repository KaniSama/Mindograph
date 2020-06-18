/// @description Puts the note on top
/// @param note_index The index of the note to put on top

Notes.notei = argument[0];

with (Notes) {
	//var notei = argument[0];
	var note = notes[| notei];
	
	for (var i = notei; i > 0; i--) {
		notes[| i] = notes[| i - 1]; 
	}
	notes[| 0] = note;
}

rearrange();