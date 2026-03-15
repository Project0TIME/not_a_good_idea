function save_level(_path) {
    var _file = file_text_open_write(_path);
    file_text_write_string(_file, json_stringify(vehicles));
    file_text_close(_file);
    show_debug_message("Level saved to: " + _path);
}