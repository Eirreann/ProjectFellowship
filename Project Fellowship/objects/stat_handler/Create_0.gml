adventurers = ds_list_create();
randomise();

ds_list_add(adventurers, custom_adventurer(character_name, "", 0, 25, "(F)"));
ds_list_add(adventurers, custom_adventurer("Mallory", "Allbelle", 4, 25, "(F)"));
ds_list_add(adventurers, custom_adventurer("Damarro", "Keggburn", 1, 25, "(M)"));
ds_list_add(adventurers, custom_adventurer("Velvet", "Merriwether", 5, 25, "(F)"));

av_points = 25;
stat_bump = 10;
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





