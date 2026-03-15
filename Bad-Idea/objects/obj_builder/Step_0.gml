if (mouse_check_button_pressed(mb_left)) {
    drag_start_col = (mouse_x - GRID_ORIGIN_X) div CELL_SIZE;
    drag_start_row = (mouse_y - GRID_ORIGIN_Y) div CELL_SIZE;
}

if (mouse_check_button_released(mb_left)) {
    var _end_col = (mouse_x - GRID_ORIGIN_X) div CELL_SIZE;
    var _end_row = (mouse_y - GRID_ORIGIN_Y) div CELL_SIZE;
    var _dc = _end_col - drag_start_col;
    var _dr = _end_row - drag_start_row;
    
    var _orient, _size, _col, _row;
    if (abs(_dc) >= abs(_dr)) {
        _orient = "h";
        _size = clamp(abs(_dc) + 1, 2, 3);
        _col = min(drag_start_col, _end_col);
        _row = drag_start_row;
    } else {
        _orient = "v";
        _size = clamp(abs(_dr) + 1, 2, 3);
        _col = drag_start_col;
        _row = min(drag_start_row, _end_row);
    }

    if (_col + (_orient == "h" ? _size : 1) <= 6 && _row + (_orient == "v" ? _size : 1) <= 6) {
        array_push(vehicles, {
            orient: _orient,
            size: _size,
            col: _col,
            row: _row,
            red: placing_red
        });
        placing_red = false;
    }
}

if (mouse_check_button_pressed(mb_right)) {
            array_delete(vehicles, -1, 1);
}

if (keyboard_check_pressed(ord("R"))) {
    placing_red = true;
}

if (keyboard_check_pressed(ord("S"))) {
    save_level("puzzle_levels/Lvl_1.json");
}