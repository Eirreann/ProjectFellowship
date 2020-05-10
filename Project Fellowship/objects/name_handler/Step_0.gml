confirm = keyboard_check_pressed(vk_enter);

if(confirm && string_length(keyboard_string) > 0)
{
	character_name = keyboard_string;
	keyboard_string = "";
	room_goto(stat_room);
}

if ( string_length(keyboard_string) < limit) 
    name = keyboard_string;
else
    keyboard_string = name;