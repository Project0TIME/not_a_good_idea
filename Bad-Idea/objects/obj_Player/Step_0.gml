var _horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_horizontal * speed_player, _vertical * speed_player, tilemap)

if (_horizontal != 0) image_xscale = sign(_horizontal)