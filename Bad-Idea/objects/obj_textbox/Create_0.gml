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
txtb_spr = Textbox;
txtb_img = 0;
txtb_img_spd = 0;

page_number = 0
page = 0;
text[0] = "Hi im Thomas rex and here to solve a case";
text[1] = "my favourite food are dino nuggies, but not the t-rex ones";
text[2] = "because everytime i eat those they make me feel like a cannibal";
text[3] = "Japan is turning footsteps into electricity! Using piezoelectric tiles, every step you take generates a small amount of energy. Millions of steps together can power LED lights and displays in busy places like Shibuya Station. A brilliant way to create a sustainable and smart city -- turning movement into clean, renewable energy";
text_lenght[0] = string_length(text[0]);
draw_char = 0;
text_speed = 1;

setup = false;