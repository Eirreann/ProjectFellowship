mG_x = device_mouse_x_to_gui(0);
mG_y = device_mouse_y_to_gui(0);

with(all) 
{
	//Mouse in bounds
	var mouse_in_bounds = (mouse_x >= bbox_left) && (mouse_x <= bbox_right) && (mouse_y >= bbox_top) && (mouse_y <= bbox_bottom);
    
	if(tag = "pc" || tag = "enemy" || tag = "npc")
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
var right_hold = mouse_check_button(mb_right);

//If there is a unit being held by the player
if(grabbed_object != noone)
{	
	if left_click && hover_id != noone
	{
		if(hover_id.tag == "pc")
		{
			grabbed_object = hover_id;
		}	
	}
	else if left_click && hover_id == noone
	{
		origin_x = mouse_x;
		origin_y = mouse_y;
		grabbed_object = noone;
	}
	
	if right_click && hover_id == noone
	{
		instance_create_layer(mouse_x, mouse_y, "Instances", o_click_mark);
		
		with(grabbed_object)
			mp_grid_path(pGrid, _path, x, y, _target_x, _target_y, 1);
		
		grabbed_object._target_x = mouse_x;
		grabbed_object._target_y = mouse_y;
		grabbed_object.moving = true;
	}
	
	if right_click
	{
		if hover_id != noone
		{
			if hover_id.tag == "enemy"
			{
				grabbed_object.local_focus = hover_id;
				grabbed_object._target_x = hover_id.x;
				grabbed_object._target_y = hover_id.y;
				grabbed_object.moving = true;
				
			}
			
			if hover_id.tag == "npc"
			{
				grabbed_object.local_focus = hover_id;
				grabbed_object._target_x = hover_id.x;
				grabbed_object._target_y = hover_id.y;
				grabbed_object.moving = true;
			}
		}
	}
}
else
{
	if left_click && hover_id != noone
	{
		if(hover_id.tag == "pc")
		{
			grabbed_object = hover_id;
		}
	}
	else if left_click && hover_id == noone
	{
		origin_x = mouse_x;
		origin_y = mouse_y;
		grabbed_object = noone;
	}
	else
	{
		
	}
}
