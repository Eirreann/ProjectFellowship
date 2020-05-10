if(moving)
{
	move_towards_point(_target_x, _target_y, 5);
	
	if(distance_to_point(_target_x, _target_y) < 1)
	{
		moving = false;
		speed = 0;	
	}
}