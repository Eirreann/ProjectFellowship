var _wall_map_id = layer_tilemap_get_id("WallTiles");
tile_at = tilemap_get_at_pixel(_wall_map_id, mouse_x, mouse_y)

draw_text_outlined(25, 25, c_black, c_white, tile_at, 1);

