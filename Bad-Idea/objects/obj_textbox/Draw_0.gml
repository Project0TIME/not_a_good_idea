accept_key = keyboard_check_pressed(vk_space);

textbox_x =  camera_get_view_x(view_camera[0]);
textbox_y =  camera_get_view_y(view_camera[0]) + 28 * scale_y;

if setup == false
{
	setup = true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	for(var p = 0; p < page_number; p++)
	{
		text_lenght[p] = string_length(text[p]);
		
		text_x_offset[p] = 40;
	}
}

if draw_char < text_lenght[page]
{
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_lenght[page]);
}	

if accept_key
{
	if draw_char == text_lenght[page]
	{
		
		if page < page_number-1
		{
			page++;
			draw_char = 0;
		}
		else
		{
			if option_number > 0
			{
				create_textbox(option_link_id[option_pos]);
			}
			instance_destroy();
		}
		
	}
	else
	{
		draw_char = text_lenght[page];
	}
}

var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y =textbox_y;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);
draw_sprite_ext(txtb_spr, txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h,0,c_white,1)

if draw_char == text_lenght[page] && page = page_number -1
{
	
	var _op_space = 16;
	var _op_bord = 10;
	for ( var op = 0; op < option_number; op++)
	{
		
		option_pos +=  keyboard_check_pressed(vk_down) -   keyboard_check_pressed(vk_up);
		option_pos = clamp(option_pos, 0, option_number - 1)
		
		var _o_w = string_width(option[op]) + _op_bord *2;
		draw_sprite_ext(txtb_spr, txtb_img, _txtb_x + 16, _txtb_y - _op_space * option_number +_op_space*op, _o_w/txtb_spr_w,(_op_space+10)/txtb_spr_h, 0, c_white, 1);
		
		if option_pos == op
		{
			draw_sprite(spr_textbox_arrow, 0, _txtb_x, _txtb_y - _op_space * option_number +_op_space*op);	
		}
		
		draw_text(_txtb_x + 16 +_op_bord, _txtb_y-_op_space* option_number +_op_space*op + 10, option[op]);
	}
}

var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page]+border,textbox_y+border, _drawtext, line_sep, line_width);