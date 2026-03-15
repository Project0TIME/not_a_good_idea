for (var _x = 0; _x < 6; _x++) {
    for (var _y = 0; _y < 6; _y++) {
        draw_rectangle(
            GRID_ORIGIN_X + _x * CELL_SIZE,
            GRID_ORIGIN_Y + _y * CELL_SIZE,
            GRID_ORIGIN_X + (_x+1) * CELL_SIZE,
            GRID_ORIGIN_Y + (_y+1) * CELL_SIZE,
            true
        );
    }
}
for (var i = 0; i < array_length(vehicles); i++) {
    var _v = vehicles[i];
    var _w = (_v.orient == "h") ? _v.size * CELL_SIZE : CELL_SIZE;
    var _h = (_v.orient == "v") ? _v.size * CELL_SIZE : CELL_SIZE;
    draw_set_color(_v.red ? c_red : c_blue);
    draw_rectangle(
        GRID_ORIGIN_X + _v.col * CELL_SIZE,
        GRID_ORIGIN_Y + _v.row * CELL_SIZE,
        GRID_ORIGIN_X + _v.col * CELL_SIZE + _w - 2,
        GRID_ORIGIN_Y + _v.row * CELL_SIZE + _h - 2,
        false
    );
}