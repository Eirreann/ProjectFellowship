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
	
	surname_list = read_surnames();
	
	choice = round(random_range(0, ds_list_size(name_list)-1));
	new_adv.name = ds_list_find_value(name_list, choice);
	
	choice = round(random_range(0, ds_list_size(surname_list)-1));
	new_adv.surname = ds_list_find_value(surname_list, choice);
//

//Determine Class
//
	class_list = read_classes();
	choice = round(random_range(0, ds_list_size(class_list)-1));
	new_adv.class = ds_list_find_value(class_list, choice);
	
	new_adv.level = floor(argument0);
//


//Determine Stats
//
	stat_points = round((10000 / 100) * argument0);
	stat_variance = 1.2;
	adv_class_obj = new_adv.class;
	
	new_adv.hp = round((stat_points / 100) * adv_class_obj.hp_w);
	hp_per = (new_adv.hp / 100) * stat_variance;
	new_adv.hp += round(random_range(-hp_per, hp_per));
	new_adv.curr_hp = new_adv.hp;
	
	new_adv.mp = round((stat_points / 100) * adv_class_obj.mp_w);
	mp_per = (new_adv.mp / 100) * stat_variance;
	new_adv.mp += round(random_range(-mp_per, mp_per));
	new_adv.curr_mp = new_adv.mp;
	
	new_adv.str = round((stat_points / 100) * adv_class_obj.str_w);
	str_per = (new_adv.str / 100) * stat_variance;
	new_adv.str += round(random_range(-str_per, str_per));
	
	new_adv.dex = round((stat_points / 100) * adv_class_obj.dex_w);
	dex_per = (new_adv.dex / 100) * stat_variance;
	new_adv.dex += round(random_range(-dex_per, dex_per));
	
	new_adv.int = round((stat_points / 100) * adv_class_obj.int_w);
	int_per = (new_adv.int / 100) * stat_variance;
	new_adv.int += round(random_range(-int_per, int_per));
	
	new_adv.fth = round((stat_points / 100) * adv_class_obj.fth_w);
	fth_per = (new_adv.fth / 100) * stat_variance;
	new_adv.fth += round(random_range(-fth_per, fth_per));
	
	new_adv.skl = round((stat_points / 100) * adv_class_obj.skl_w);
	skl_per = (new_adv.skl / 100) * stat_variance;
	new_adv.fth += round(random_range(-skl_per, skl_per));
	
//


return new_adv;