function load_level(_json_path) {
    var _file = file_text_open_read(_json_path);
    var _json_string = "";
    while (!file_text_eof(_file)) {
        _json_string += file_text_readln(_file);
    }
    file_text_close(_file);

    var _obstacles = json_parse(_json_string);

    for (var i = 0; i < array_length(_obstacles); i++) {
        var _v = _obstacles[i];
        var _inst = instance_create_layer(
            global.GRID_ORIGIN_X + _v.col * global.CELL_SIZE,
            global.GRID_ORIGIN_Y + _v.row * global.CELL_SIZE,
            "Instances",
            obj_vehicle
        );
        _inst.orient  = _v.orient;
        _inst.size    = _v.size;
        _inst.is_red  = variable_struct_exists(_v, "red") ? _v.red : false;
        _inst.col     = _v.col;
        _inst.row     = _v.row;
    }
}