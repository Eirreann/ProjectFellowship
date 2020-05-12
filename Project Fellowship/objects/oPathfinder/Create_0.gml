tag = "handler";
cell_size = 32;
globalvar pGrid;
pGrid = mp_grid_create(0, 0, room_width/cell_size, room_height/cell_size, cell_size, cell_size);
var _wall_map_id = layer_tilemap_get_id("WallTiles");

for(i = 0; i < room_width / cell_size; i++)
{	
	for(j = 0; j < room_height / cell_size; j++)
	{
		tile_at = tilemap_get_at_pixel(_wall_map_id, i*cell_size, j*cell_size);
		
		if(tile_at != 0)
		{
			mp_grid_add_cell(pGrid, i, j);
		}
	}
}