/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var near = layer_get_id("Backgrounds_2");
var stillNear = layer_get_id("Backgrounds_1");
var distant = layer_get_id("Background");

layer_x(near, lerp(0, camera_get_view_x(view_camera[0]), 0.5 ) );
layer_x(stillNear, lerp(0, camera_get_view_x(view_camera[0]), 0.7 ) );
layer_x(distant, lerp(0, camera_get_view_x(view_camera[0]), 0.85 ) );
