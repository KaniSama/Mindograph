/// @description in_camera checks if the point is inside the camera's view
/// @param xx the x position of the point
/// @param yy the y position of the point
/// @param offset the offset for the camera's width and height

var xx = argument[0];
var yy = argument[1];
var off = argument[2];

var cx = Camera.camX;
var cy = Camera.camY;

var cw = Camera.camW;
var ch = Camera.camH;

return (xx >= cx-off && yy >= cy-off && xx <= cw+off && yy <= ch+off);