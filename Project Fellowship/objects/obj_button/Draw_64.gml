mG_x = device_mouse_x_to_gui(0);
mG_y = device_mouse_y_to_gui(0);

button_x = start_x;
button_y = start_y;
button_xscale = 225;
button_yscale = 75;

draw_set_font(text);

for(i = 0; i < array_length_1d(buttons); i++)
{
	
	draw_rectangle_color(button_x, button_y, button_x+button_xscale, button_y+button_yscale, c_gray,c_gray,c_gray,c_gray, 0);
	
	if(within(button_x, button_x+button_xscale, mG_x))
	{
		if(within(button_y, button_y+button_yscale,mG_y))
		{
			if(mouse_check_button_pressed(mb_left))
			{
				btn_id = buttons[i];
				event_user(0);
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
	draw_text_outlined(button_x + (button_xscale/2), button_y + (button_yscale/3), c_black, text_color, button_txt[i], 1);
	draw_set_halign(fa_left);
	
	button_y += (button_yscale + 10);
}


ui_y = 130;
ui_x = 300;
for(i = 0; i < ds_list_size(target_list); i++)
{
	local_adv = ds_list_find_value(target_list, i);
	draw_rectangle_color(ui_x-10, ui_y, (ui_x+500),(ui_y+75), c_gray,c_gray,c_gray,c_gray, 0); ui_y+=5;
	
	button_x = 660;
	button_y = ui_y + 5;
	button_xscale = 100;
	button_yscale = 55;
	
	if(within(button_x, button_x+button_xscale, mG_x))
	{
		if(within(button_y, button_y+button_yscale,mG_y))
		{
			if(mouse_check_button_pressed(mb_left))
			{
				hire_choice = i;
				event_user(2);
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
	
	draw_rectangle(button_x, button_y, button_x+100, button_y+55, 0);
	draw_rectangle_color(button_x, button_y, button_x+100, button_y+55, c_black,c_black,c_black,c_black, 1);
	
	draw_set_halign(fa_center);
	if(btn_id == "recruit")
		draw_text_outlined(button_x + (button_xscale/2), button_y + (button_yscale/3), c_black, text_color, "Hire", 1);
	else
		draw_text_outlined(button_x + (button_xscale/2), button_y + (button_yscale/3), c_black, text_color, "Dismiss", 1);
		
	draw_set_halign(fa_left);
	
	
	draw_text_outlined(ui_x,ui_y,c_black,c_white, string(local_adv.name) + " " + string(local_adv.gender) + ": " + string(local_adv.class.name) + "   Level: " + string(local_adv.level), 1); ui_y += 20;
	
	stat_text = "HP: " + string(local_adv.hp) + ", ";
	stat_text += "MP: " + string(local_adv.mp) + ", ";
	stat_text += "Str: " + string(local_adv.str) + ", ";
	draw_text_outlined(ui_x,ui_y,c_black,c_white, string(stat_text), 1); ui_y += 20;
	
	stat_text = "Dex: " + string(local_adv.dex) + ", ";
	stat_text += "Int: " + string(local_adv.int) + ", "; 
	stat_text += "Faith: " + string(local_adv.fth);
	draw_text_outlined(ui_x,ui_y,c_black,c_white, string(stat_text), 1); ui_y += 45;
	
}