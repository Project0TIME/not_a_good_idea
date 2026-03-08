selected_pos +=  keyboard_check_pressed(vk_down) -   keyboard_check_pressed(vk_up);
selected_pos = clamp(selected_pos, 0, array_length(menu) - 1)
for (var p = 0; p < array_length(menu); p++)
{
	draw_text_colour(x, y + 32*p, menu[p], c_white, c_white, c_white, c_white, 1);

	if selected_pos == p
	{
		draw_sprite(spr_textbox_arrow, 0, x, y + 32*p);	
	}
}
