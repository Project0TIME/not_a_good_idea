if (horizontal != 0) facing = sign(horizontal)
draw_set_alpha(0.3);
draw_ellipse(x - 10, y - 4, x + 10, y, false);
draw_set_alpha(1);

draw_sprite_ext(spr_dino, 0, x, y-14, 1*facing, 1, 0, c_white, 1);

