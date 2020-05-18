key_confirm = keyboard_check_pressed(vk_space);
key_accept = keyboard_check_pressed(vk_enter);

mouse_confirm = mouse_check_button_pressed(mb_left);

mG_x = device_mouse_x_to_gui(0);
mG_y = device_mouse_y_to_gui(0);

if(_msg_indx < array_height_2d(_messages))
{
	if(_current_char < string_length(_messages[_msg_indx, 1]))
	{
		_name = _messages[_msg_indx, 0];
		_current_char++;
		_input_msg = string_copy(_messages[_msg_indx, 1], 0, _current_char);
	}
	else if(_msg_indx < array_height_2d(_messages))
	{
		if(_messages[_msg_indx, 1] == "@input")
		{
			if(key_accept && string_length(keyboard_string) > 0)
			{
				character_name = keyboard_string;
				
				_current_char = 0;
				_input_msg = "";
				_msg_indx++;
			}
		}
		else
		{
			if(key_confirm || mouse_confirm)
			{
				if(_msg_indx < array_height_2d(_messages))
				{
					keyboard_string = "";
					_current_char = 0;
					_input_msg = "";
					_msg_indx++;
				}
				else
				{
					instance_destroy(self);	
				}
			}	
		}
	}
}

if(key_confirm)
{
	keyboard_string = string_copy(keyboard_string, 0, string_length(keyboard_string)-1);	
}

if(string_length(keyboard_string) > character_limit)
{
	keyboard_string = string_copy(keyboard_string, 0, string_length(keyboard_string)-1);	
}


