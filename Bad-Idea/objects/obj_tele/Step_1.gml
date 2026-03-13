if place_meeting(x, y, obj_temp_player)
{
	obj_temp_player.x = tar_x;
	obj_temp_player.y = tar_y;
	
	room_goto(tar_room);
}