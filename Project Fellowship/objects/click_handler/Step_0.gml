with(all) 
{
	//Mouse in bounds
	var mouse_in_bounds = (mouse_x >= bbox_left) && (mouse_x <= bbox_right) && (mouse_y >= bbox_top) && (mouse_y <= bbox_bottom);
    
	if(clickable)
	{
		if mouse_in_bounds 
		{
			click_handler.hover_id = id;
		}
		else if !mouse_in_bounds && click_handler.hover_id == noone
		{
			click_handler.hover_id = noone;	
		}
	}
	
	
	

}

//click action
var left_click = mouse_check_button_pressed(mb_left);
var right_click = mouse_check_button_pressed(mb_right);

if(grabbed_object != noone)
{
	if left_click && hover_id != noone
	{
		grabbed_object = hover_id;	
	}
	else if left_click && hover_id == noone
	{
		grabbed_object = noone;	
	}
	
	if right_click
	{
		instance_create_layer(mouse_x, mouse_y, "Instances", o_click_mark);
		grabbed_object._target_x = mouse_x;
		grabbed_object._target_y = mouse_y;
		grabbed_object.moving = true;
	}
}
else
{
	if left_click && hover_id != noone
	{
		grabbed_object = hover_id;
	}
	else
	{
		grabbed_object = noone;	
	}
}
