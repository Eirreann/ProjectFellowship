classes = ds_list_create();

//ds_list_add(classes, new_class("class_name"), HP, MP, Str, Dex, Int, Fth, Skl));


//Melee Classes
ds_list_add(classes, new_class("Warrior", 40, 10, 65, 25, 10, 10, 20));
ds_list_add(classes, new_class("Assassin", 20, 10, 15, 65, 15, 10, 40));
ds_list_add(classes, new_class("Paladin", 40, 40, 15, 25, 15, 65, 25));

//Ranged Classes
ds_list_add(classes, new_class("Sniper", 10, 15, 30, 40, 10, 10, 65));
ds_list_add(classes, new_class("Pancake Lord", 10, 15, 30, 40, 10, 10, 65));

//Magic Classes
ds_list_add(classes, new_class("Arcanist", 10, 35, 15, 25, 65, 10, 35));
ds_list_add(classes, new_class("Cleric", 25, 40, 25, 10, 30, 65, 25));
ds_list_add(classes, new_class("Occultist", 25, 40, 20, 20, 40, 40, 10));

//Special Classes
//ds_list_add(classes, new_class("Wanderer", 30, 30, 30, 30, 30, 30, 30));

return classes;