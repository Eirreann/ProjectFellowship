if(click_handler.grabbed_object != noone)
{
	for (i = 0; i < 3; i++) 
	{
	    box_xscale = 100;	
		box_yscale = 100;

		box_x1 = 25 + (box_xscale+10)*i;
		box_x2 = box_x1 + box_xscale;

		box_y1 = window_get_height() - 25;
		box_y2 = box_y1 - box_yscale;

		if(c_cooldowns[i] > 0)
		{
			draw_set_alpha(0.25);
			draw_rectangle_color(box_x1, box_y1 - (box_yscale * (c_cooldowns[i] / i_cooldowns[i])), box_x2, box_y1, c_white, c_white, c_white, c_white, 0);
			draw_set_alpha(1);
		}

		draw_set_alpha(0.5);
		draw_rectangle_color(box_x1, box_y2, box_x2, box_y1, c_black, c_black, c_black, c_black, 0);
		draw_set_alpha(1);
		draw_text_outlined(box_x1 + 5, box_y2, c_black, c_white, buttons[i], 1);
	
	
	}
}
