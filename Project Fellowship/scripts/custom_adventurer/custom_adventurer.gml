new_adv = instance_create_layer(0,0, "Instances", Adventurer);

new_adv.name = argument0;
a_class = argument1;
a_level = argument2;
new_adv.level = a_level;

new_adv.gender = argument3;

//Get Class
class_list = read_classes();
new_adv.class = ds_list_find_value(class_list, a_class);

//Determine Stats
//
	stat_points = round((10000 / 100) * a_level);
	stat_variance = 1.2;
	adv_class_obj = new_adv.class;
	
	new_adv.hp = round((stat_points / 100) * adv_class_obj.hp_w);
	hp_per = (new_adv.hp / 100) * stat_variance;
	new_adv.hp += round(random_range(-hp_per, hp_per));
	
	new_adv.mp = round((stat_points / 100) * adv_class_obj.mp_w);
	mp_per = (new_adv.mp / 100) * stat_variance;
	new_adv.mp += round(random_range(-mp_per, mp_per));
	
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