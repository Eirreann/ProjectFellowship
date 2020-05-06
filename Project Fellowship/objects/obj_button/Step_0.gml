if(keyboard_check_pressed(ord("R")))
{
	ds_list_clear(adventurers);
	event_user(1);
}

reputation = obj_basicUI.reputation;
max_reputation = obj_basicUI.max_reputation;