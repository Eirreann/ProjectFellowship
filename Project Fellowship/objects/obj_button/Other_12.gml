if(btn_id == "recruit" && ds_list_size(e_adventurers) < 7)
{
	ds_list_add(e_adventurers, ds_list_find_value(adventurers, hire_choice));
	
	ds_list_delete(adventurers, hire_choice);
	ds_list_add(adventurers, gen_adv((reputation / max_reputation) * 100));
}
else if(btn_id == "manage")
{
	ds_list_delete(e_adventurers, hire_choice);
}

