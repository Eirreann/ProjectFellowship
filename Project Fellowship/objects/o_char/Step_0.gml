if(moving)
{
	mp_grid_path(pGrid, _path, x, y, _target_x, _target_y, 1);
	path_start(_path, 2.25, 0, 1);
	
	if distance_to_point(_target_x, _target_y) < 1
	{
		moving = false;
	}
}



if local_focus != noone
{
	if distance_to_point(local_focus.x, local_focus.y) < 20
	{
		moving = false;
		if local_focus.tag == "npc"
		{
			path_end();
			show_debug_message("Let's Talk!");
			local_focus = noone;
		}
		
	}
}