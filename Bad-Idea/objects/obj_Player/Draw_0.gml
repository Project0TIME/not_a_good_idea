var horizon = 150;
var ground = 330;
var t = (y-horizon)/(ground-horizon);
t = clamp(t, 0, 1);

var min_scale = 0.8;
var max_scale = 1.8;

var scale = lerp(min_scale, max_scale, t);
if (horizontal != 0) facing = sign(horizontal)
draw_set_alpha(0.3);
draw_ellipse(x - 10*scale, y - 4*scale, x + 10*scale, y, false);
draw_set_alpha(1);

draw_sprite_ext(spr_dino, 0, x, y-14, scale*facing, scale, 0, c_white, 1);

