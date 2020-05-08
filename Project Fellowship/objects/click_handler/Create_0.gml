hover_id = noone;

player_object = o_char;

grabbed_object = noone;

for(i = 0; i < 3; i++)
{
	randomise();
	
	c_obj = instance_create_layer(64 + (72*i), 64, "Instances", o_char);
	
	c_obj.details = gen_adv(100);
}

clickable = false;