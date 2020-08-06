/// @description init

type = "wb";

tw = 500; // Target width of the note
th = 240; // Target height of the note

w = 0; // Display width of the note
h = 0; // Display height of the note
header = 16; // The height of the note's drag header

drag = true; // Determines if the note is currently being dragged by the mouse
resize = false; // Determines if the note is currently being resized
pinned = false; // Determines if the note is pinned from being dragged or resized

xOffset = 0; // X and Y offsets for dragging
yOffset = 0;

text = "";

connections = ds_list_create(); // List of all the note's connections. Has a bunch of issues!
tempConnection = -1; // Object placeholder variable for the currently establishing connection

img = surface_create(tw, th-header*2);

surface_set_target(img);
	//draw_rectangle_color(x, y+header, x+tw, y+th, c_white, c_white, c_white, c_white, false);
	draw_clear_alpha(c_white, 0);
surface_reset_target();

mouse_xprevious = mouse_x;
mouse_yprevious = mouse_y;
buf = buffer_create(16328, buffer_grow, 1);