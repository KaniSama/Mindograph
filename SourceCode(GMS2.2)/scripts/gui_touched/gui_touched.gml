/// @description Checks if the object is touched my the mouse cursor in the rect on the gui layer: (x, y, x+w, x+h)
/// @param x The starting x of the rectangle
/// @param y The starting y of the rectangle
/// @param w The width of the rectangle
/// @param h The height of the rectangle


var xx = argument[0];
var yy = argument[1];
var ww = argument[2];
var hh = argument[3];
var mx = window_mouse_get_x();
var my = window_mouse_get_y();

return mx >= xx && mx <= xx + ww && my >= yy && my <= yy + hh;