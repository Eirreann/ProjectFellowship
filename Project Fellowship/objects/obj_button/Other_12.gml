if(btn_id == "recruit")
{
	ds_list_add(e_adventurers, ds_list_find_value(adventurers, hire_choice));
	ds_list_delete(adventurers, hire_choice);
	
	ds_list_add(adventurers, gen_adv((reputation / max_reputation) * 100));
}
else
{
	ds_list_delete(e_adventurers, hire_choice);
}