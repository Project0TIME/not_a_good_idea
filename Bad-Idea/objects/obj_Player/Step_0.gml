horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(horizontal * speed_player, _vertical * speed_player, tilemap)

if (horizontal != 0) image_xscale = sign(horizontal)