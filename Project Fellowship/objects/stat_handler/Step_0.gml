if keyboard_check_pressed(ord("Q"))
{
	if(adv_index > 0)
	{
		event_user(2);
		adv_index--;
	}
		
}
else if keyboard_check_pressed(ord("E"))
{
	if(adv_index < ds_list_size(adventurers) - 1)
	{
		event_user(2);
		adv_index++;
	}
}

if(keyboard_check(vk_control))
{
	b_sp_pnt = 5;	
}
else
{
	b_sp_pnt = 1;	
}