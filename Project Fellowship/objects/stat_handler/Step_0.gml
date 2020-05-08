if keyboard_check_pressed(ord("Q"))
{
	if(adv_index > 0)
	{
		adv._av_points += points_spent;
		event_user(1);
		adv_index--;
	}
		
}
else if keyboard_check_pressed(ord("E"))
{
	if(adv_index < ds_list_size(adventurers) - 1)
	{
		adv._av_points += points_spent;
		event_user(1);
		adv_index++;
	}
}