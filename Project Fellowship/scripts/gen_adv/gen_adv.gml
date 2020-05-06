new_adv = instance_create_layer(0,0, "Instances", Adventurer);

//Determine Name
//
	m_or_f = round(random_range(0,100));
	
	if(m_or_f <= 50)
	{
		name_list = read_names_male();
		new_adv.gender = "(M)";
	}
	else
	{
		name_list = read_names_female();
		new_adv.gender = "(F)";
	}

	
	choice = round(random_range(0, ds_list_size(name_list)-1));
	new_adv.name = ds_list_find_value(name_list, choice);
	
	show_debug_message(ds_list_size(name_list));
//

//Determine Class
//
	class_list = read_classes();
	choice = round(random_range(0, ds_list_size(class_list)-1));
	new_adv.class = ds_list_find_value(class_list, choice);
//


//Determine Stats
//
	stat_points = round((10000 / 100) * argument0);
	
	adv_class_obj = class_weight(new_adv.class);
	
	new_adv.hp = round((stat_points / 100) * adv_class_obj.hp_w); 
	hp_per = (new_adv.hp / 100) * 1.2;
	new_adv.hp += round(random_range(-hp_per, hp_per));
	
	new_adv.mp = round((stat_points / 100) * adv_class_obj.mp_w);
	mp_per = (new_adv.mp / 100) * 1.2;
	new_adv.mp += round(random_range(-mp_per, mp_per));
	
	new_adv.str = round((stat_points / 100) * adv_class_obj.str_w);
	str_per = (new_adv.str / 100) * 1.2;
	new_adv.str += round(random_range(-str_per, str_per));
	
	new_adv.dex = round((stat_points / 100) * adv_class_obj.dex_w);
	dex_per = (new_adv.dex / 100) * 1.2;
	new_adv.dex += round(random_range(-dex_per, dex_per));
	
	new_adv.int = round((stat_points / 100) * adv_class_obj.int_w);
	int_per = (new_adv.int / 100) * 1.2;
	new_adv.int += round(random_range(-int_per, int_per));
	
//


return new_adv;