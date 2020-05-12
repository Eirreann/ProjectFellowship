hover_id = noone;

origin_x = 0;
origin_y = 0;

window_set_cursor(cr_none);
cursor_sprite = s_cursor;

grabbed_object = noone;

tag = "handler";

result = 9001;
var _wall_map_id = layer_tilemap_get_id("WallTiles");

adventurers = ds_list_create();
randomise();

ds_list_add(adventurers, custom_adventurer("Thayla", "Rowe", 0, 25, "(F)"));
ds_list_add(adventurers, custom_adventurer("Mallory", "Allbelle", 4, 25, "(F)"));
ds_list_add(adventurers, custom_adventurer("Damarro", "Keggburn", 1, 25, "(M)"));
ds_list_add(adventurers, custom_adventurer("Velvet", "Merriwether", 5, 25, "(F)"));

for(i = 0; i < ds_list_size(adventurers); i++)
{ result = 4;
	while(result != 0)
	{
		show_debug_message(i);
		randomise();
		rand_x = round(random_range(32,room_width-32));
		rand_y = round(random_range(32, room_height-32));
	
		tile_at = tilemap_get_at_pixel(_wall_map_id, rand_x, rand_y);

		if(tile_at == 0)
		{
			c_obj = instance_create_layer(rand_x, rand_y, "Instances", o_char);
			c_obj.details = ds_list_find_value(adventurers, i);
			
			result = 0
		}
		else
		{
			result = 4;	
		}
	}
}

for(i = 0; i < 5; i++)
{ result = 4;
	while(result != 0)
	{
		show_debug_message(i);
		randomise();
		rand_x = round(random_range(32,room_width-32));
		rand_y = round(random_range(32, room_height-32));
	
		tile_at = tilemap_get_at_pixel(_wall_map_id, rand_x, rand_y);

		if(tile_at == 0)
		{
			c_obj = instance_create_layer(rand_x, rand_y, "Instances", o_enemy);
			c_obj.details = ds_list_find_value(adventurers, i);
			
			result = 0
		}
		else
		{
			result = 4;	
		}
	}
}


