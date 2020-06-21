/// @description init

tw = 240; // Target width of the note
th = 240; // Target height of the note

w = 0; // Display width of the note
h = 0; // Display height of the note
header = 16; // The height of the note's drag header

drag = true; // Determines if the note is currently being dragged by the mouse
resize = false; // Determines if the note is currently being resized
pinned = false; // Determines if the note is pinned from being dragged or resized

xOffset = 0; // X and Y offsets for dragging
yOffset = 0;

text = "Double-click to edit text";

connections = ds_list_create(); // List of all the note's connections. Has a bunch of issues!
tempConnection = -1; // Object placeholder variable for the currently establishing connection