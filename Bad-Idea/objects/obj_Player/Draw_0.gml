var horizon = 150;
var ground = 330;
var t = (y-horizon)/(ground-horizon);
t = clamp(t, 0, 1);

var min_scale = 0.8;
var max_scale = 1.8;

var scale = lerp(min_scale, max_scale, t);
if (horizontal != 0) facing = sign(horizontal)

draw_sprite_ext(dino, 0, x, y-14, scale*facing, scale, 0, c_white, 1);

