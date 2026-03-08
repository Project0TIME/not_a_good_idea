if (keyboard_check_pressed(vk_space))
{
    switch (selected_pos)
    {
        case 0: room_goto(TopDown_Test); break;  
        case 3: game_end(); break;               
    }
}