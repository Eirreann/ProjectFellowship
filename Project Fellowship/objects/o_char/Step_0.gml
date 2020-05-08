if(moving)
{
	move_towards_point(_target_x, _target_y, 4);
	
	if(distance_to_point(_target_x, _target_y) < 4)
	{
		moving = false;
		speed = 0;	
	}
}