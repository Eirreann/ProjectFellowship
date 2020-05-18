_messages = 0;
globalvar character_name;
character_name = "Thayla";

t_cursor = "|";
character_limit = 12;
t_cursor_delay = 25;

dialogue_id = "mallory_player_prisonbreak";

_messages = get_scene_dialogue(dialogue_id);

_name = _messages[0,0]
_input_msg = _messages[0,1];
_msg_indx = 0;
_current_char = 0;

alarm[0] = t_cursor_delay;