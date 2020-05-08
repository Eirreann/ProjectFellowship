adventurers = ds_list_create();
randomise();

ds_list_add(adventurers, custom_adventurer("Thayla", 0, 15, "(F)"));
ds_list_add(adventurers, custom_adventurer("Mallory", 4, 15, "(F)"));
ds_list_add(adventurers, custom_adventurer("Damarro", 1, 100, "(M)"));
ds_list_add(adventurers, custom_adventurer("Velvet", 5, 15, "(F)"));
av_points = 25;

points_spent = 0;
spent_per_stat[0,0] = 0;
adv_index = 0;

adv = ds_list_find_value(adventurers, adv_index);
av_points = adv._av_points;

choice = -4;


for(k = 0; k < ds_list_size(adventurers); k++)
{
	spent_per_stat[k, 0] = 0;
	spent_per_stat[k, 1] = 0;
	spent_per_stat[k, 2] = 0;
	spent_per_stat[k, 3] = 0;
	spent_per_stat[k, 4] = 0;
	spent_per_stat[k, 5] = 0;
	spent_per_stat[k, 6] = 0;
}





