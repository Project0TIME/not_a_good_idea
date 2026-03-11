if place_meeting(x + mov_x, y, obj_block) {mov_x = 0;}
if place_meeting(x, y + mov_y, obj_block) {mov_y = 0;}

if mov_x != 0 || mov_y != 0 {}
else image_index = 0;

{
	x += mov_x;
	y += mov_y;
}

if mov_y == 0
{
	if mov_x > 0 {_dir = right;}
	if mov_x < 0 {_dir = left;}
}

if mov_x > 0 && _dir = left {_dir = right;}
if mov_x < 0 && _dir = right {_dir = left;}

if mov_x == 0
{
	if mov_y < 0 {_dir = up;}
	if mov_y > 0 {_dir = down;}
}

if mov_y > 0 && _dir = up {_dir = down;}
if mov_y < 0 && _dir = down {_dir = up;}

//Spirte
sprite_index = sprite[_dir];