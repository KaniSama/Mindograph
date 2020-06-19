/// @description save scripts

if (keyboard_check(vk_control)) {
	if (keyboard_check_pressed(ord("S"))) {
		if (keyboard_check(vk_shift))
			filename = get_string("Enter the name of the file to save:", filename);
		if (filename != "")
			save_notes(/*filename*/);
	}
	
	if (keyboard_check_pressed(ord("O"))) {
		filename = get_string("Enter the file name:", filename);
		if (filename != "")
			load_file(/*filename*/);
	}
	
	if (keyboard_check_pressed(ord("N"))) {
		if (show_question("Are you sure you want to clear the mindmap?"))
			cleanup();
	}
} else {
	if (keyboard_check_pressed(vk_f5)) {
		filename = get_string("Enter the name of the file to save:", filename);
		if (filename != "")
			save_notes(/*filename*/);
	}
	
	if (keyboard_check_pressed(vk_f9)) {
		filename = get_string("Enter the file name:", filename);
		if (filename != "")
			load_file(/*filename*/);
	}
}

