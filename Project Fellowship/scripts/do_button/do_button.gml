button_xPos = argument0;
button_yPos = argument1;
button_xScale = argument2;
button_yScale = argument3;
button_text = argument4;

draw_rectangle_color(button_xPos, button_yPos, button_xPos+button_xScale, button_yPos+button_yScale, c_white,c_white,c_white,c_white, 0);
draw_rectangle_color(button_xPos, button_yPos, button_xPos+button_xScale, button_yPos+button_yScale, c_black,c_black,c_black,c_black, 1);
	
	if(within(button_xPos, button_xPos+button_xScale, mG_x))
	{
		if(within(button_yPos, button_yPos+button_yScale,mG_y))
		{
			if(mouse_check_button_pressed(mb_left))
			{
				return true;
			}
			text_color = c_yellow;
		}
		else
		{
			text_color = c_white;
		}
	}
	else
	{
		text_color = c_white;
	}
	
draw_set_halign(fa_center);
draw_text_outlined(button_xPos + (button_xScale/2), button_yPos + (button_yScale/2)-10, c_black, text_color, button_text, 1);
draw_set_halign(fa_left);