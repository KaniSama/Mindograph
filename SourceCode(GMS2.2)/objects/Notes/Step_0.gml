/// @description save scripts

if (keyboard_check(vk_control)) {
	if (keyboard_check_pressed(ord("S"))) {
		if (keyboard_check(vk_shift))
			filename = get_string("Enter the name of the file to save:", filename);
		if (filename != "") {
			save_notes(/*filename*/);
			//saved = true;
		}
	}
	
	if (keyboard_check_pressed(ord("O"))) {
		filename = get_string("Enter the file name:", filename);
		if (filename != "") {
			load_file(/*filename*/);
			
			window_set_caption("Mindograph – " + filename/* + saved?"":"*"*/);
		}
	}
	
	if (keyboard_check_pressed(ord("N"))) {
		if (show_question("Are you sure you want to clear the mindmap?")) {
			cleanup();
			window_set_caption("Mindograph – " + "New"/* + saved?"":"*"*/);
		}
	}
} else {
	if (mouse_check_button_pressed(mb_left)) {
		if (keyboard_check_pressed(vk_f5)) {
			filename = get_string("Enter the name of the file to save:", filename);
			if (filename != "")
				save_notes(/*filename*/);
		}
	
		if (keyboard_check_pressed(vk_f9)) {
			filename = get_string("Enter the file name:", filename);
			if (filename != "") {
				load_file(/*filename*/);
				window_set_caption("Mindograph – " + filename/* + saved?"":"*"*/);
			}
		}
	}
}

