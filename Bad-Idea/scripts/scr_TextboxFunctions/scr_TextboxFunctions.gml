function scr_set_defaults_for_text(){
	line_break_pos[0, page_number] = 999;	
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	for (var c = 0; c < 999; c++)
	{
		col_1[c, page_number] = c_white;
		
		float_text[c, page_number] = 0;
		float_dir[c, page_number] = c * 20;
		
		shake_text[c, page_number] = 0;
		shake_dir[c, page_number] = irandom(360);
		shake_timer[c, page_number] = irandom(4);
	}
	
	txtb_spr[page_number] = Textbox;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
}


function scr_text_color(_start, _end, _col1){
		for (var c = _start; c <= _end; c++)
		{
			col_1[c, page_number-1] = _col1;	
		}
}


function scr_text_float(_start, _end){
		for (var c = _start; c <= _end; c++)
		{
			float_text[c, page_number - 1 ] = true; 	
		}
}



function scr_text_shake(_start, _end){
		for (var c = _start; c <= _end; c++)
		{
			shake_text[c, page_number - 1 ] = true; 	
		}
}


/// @param text
/// @param [character]
function scr_text(_text){
	
	scr_set_defaults_for_text();
	
	text[page_number]= _text;
	if argument_count > 1 
	{
		switch (argument[1])
		{
			case "dino":
				speaker_sprite[page_number] = spr_speaker;
				txtb_spr[page_number] = Textbox;
				break;
			case "dino angry":
				speaker_sprite[page_number] = spr_speaker_angry;
				txtb_spr[page_number] = Textbox;
				break;	
		}
		
	}
	if argument_count > 2
	{
		speaker_side[page_number] = argument[2];
	}
	page_number++;
}


/// @param option
/// @param link_id
function scr_option(_option, _link_id){
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++; 
}


function create_textbox(_text_id){
	with(	instance_create_depth(0, 0 , -9999, obj_textbox))
		{
			scr_game_text(_text_id);
		}
}