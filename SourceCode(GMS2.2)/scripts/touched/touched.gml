/// @description Checks if the object is touched my the mouse cursor in the rect: (x, y, x+w, x+h)
/// @param x The starting x of the rectangle
/// @param y The starting y of the rectangle
/// @param w The width of the rectangle
/// @param h The height of the rectangle


var xx = argument[0];
var yy = argument[1];
var ww = argument[2];
var hh = argument[3];

return mouse_x >= xx && mouse_x <= xx + ww && mouse_y >= yy && mouse_y <= yy + hh;