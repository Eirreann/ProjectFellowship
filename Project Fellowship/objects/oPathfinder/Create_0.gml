tag = "handler";

globalvar pGrid;
pGrid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);
var _wall_map_id = layer_tilemap_get_id("WallTiles");

for(i = 0; i < room_width / 32; i++)
{	
	for(j = 0; j < room_height / 32; j++)
	{
		tile_at = tilemap_get_at_pixel(_wall_map_id, i*32, j*32);
		
		if(tile_at != 0)
		{
			mp_grid_add_cell(pGrid, i, j);
		}
	}
}