/// @description Edit text

if (touched(x, y+header, w, h-header) && eligible()) {
	var txt = get_string("Enter text down below:", text);
	if (string_length(txt) > 0 && txt != "Anonymous") {
		//text = txt;
		
		text = txt;
		displaytext = string_replace_all(text, "<br>", "\n");
	}
}

if (touched(x, y, w, header) && eligible()) {
	pinned = !pinned;
}