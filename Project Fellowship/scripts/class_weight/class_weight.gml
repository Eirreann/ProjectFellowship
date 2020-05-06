class_obj = instance_create_layer(0,0,"Instances", Class);

switch(argument0)
{
	case "Warrior":
		class_obj.hp_w = 40;
		class_obj.mp_w = 5;
		class_obj.str_w = 40;
		class_obj.dex_w = 10;
		class_obj.int_w = 5;
		break;
	case "Arcanist":
		class_obj.hp_w = 10;
		class_obj.mp_w = 35;
		class_obj.str_w = 5;
		class_obj.dex_w = 10;
		class_obj.int_w = 40;
		break;
	case "Assassin":
		class_obj.hp_w = 20;
		class_obj.mp_w = 10;
		class_obj.str_w = 15;
		class_obj.dex_w = 50;
		class_obj.int_w = 5;
		break;
	case "Sniper":
		class_obj.hp_w = 10;
		class_obj.mp_w = 15;
		class_obj.str_w = 25;
		class_obj.dex_w = 40;
		class_obj.int_w = 10;
		break;
	case "Cleric":
		class_obj.hp_w = 5;
		class_obj.mp_w = 40;
		class_obj.str_w = 5;
		class_obj.dex_w = 10;
		class_obj.int_w = 30;
		break;
	case "Occultist":
		class_obj.hp_w = 25;
		class_obj.mp_w = 28;
		class_obj.str_w = 15;
		class_obj.dex_w = 10;
		class_obj.int_w = 32;
		break;
}

return class_obj;