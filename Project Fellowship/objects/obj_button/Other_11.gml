randomise();

for(j = 0; j < 5; j++)
{
	ds_list_add(adventurers, gen_adv((reputation / max_reputation) * 100));
}