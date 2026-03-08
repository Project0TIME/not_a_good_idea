view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);

port_w = view_get_wport(0);
port_h = view_get_hport(0);
scale_x = port_w / view_w;
scale_y = port_h / view_h;

textbox_width = 35* scale_x;
textbox_height = 27* scale_y;
border = 2.5 * scale_x;
line_sep = 2.5 * scale_y;
line_width = textbox_width - border*2;
txtb_spr[0] = Textbox;
txtb_img = 0;
txtb_img_spd = 0;

page_number = 0
page = 0;
text[0] = "";
text_lenght[0] = string_length(text[0]);

char[0,0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;

draw_char = 0;
text_speed = 1;

option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;

scr_set_defaults_for_text()
last_free_space = 0;
text_pause_timer = 0;
text_pause_time = 16;