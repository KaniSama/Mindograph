/// @description

var _x = drx - (mouse_x - camera_get_view_x(cam));
var _y = dry - (mouse_y - camera_get_view_y(cam));

camera_set_view_pos(cam, _x, _y);