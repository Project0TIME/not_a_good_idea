var w = (orient == "h") ? size * global.CELL_SIZE : global.CELL_SIZE;
var h = (orient == "v") ? size * global.CELL_SIZE : global.CELL_SIZE;
draw_set_colour(is_red ? c_red : c_blue);
draw_rectangle(x, y, x + w - 4, y + h - 4, false);