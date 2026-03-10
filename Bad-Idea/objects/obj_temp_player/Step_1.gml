/// @description Move Calculator
 {
	m_left = keyboard_check(vk_left);
	m_right = keyboard_check(vk_right);
	
	m_up = keyboard_check(vk_up);
	m_down = keyboard_check(vk_down);
 }
 
mov_x = move_spd*(m_right - m_left);
mov_y = move_spd*(m_down - m_up);