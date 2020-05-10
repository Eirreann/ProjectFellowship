start_x = 25;
start_y = 25;

mG_x = device_mouse_x_to_gui(0);
mG_y = device_mouse_y_to_gui(0);

text_color = c_white;
spacing = 25;
txt_scale = 1.0;


adv = ds_list_find_value(adventurers, adv_index);

draw_text_outlined(start_x, start_y, c_black, text_color, adv.name + " : " + adv.gender, txt_scale); start_y += 15;
draw_text_outlined(start_x, start_y, c_black, text_color, adv.class.name, txt_scale); start_y += spacing;
draw_text_outlined(start_x, start_y, c_black, text_color, "Spent Points: " + string(points_spent), txt_scale); start_y += 15;
draw_text_outlined(start_x, start_y, c_black, text_color, "Available Points: " + string(adv._av_points), txt_scale); start_y += spacing*2.8;

draw_text_outlined(start_x, start_y, c_black, text_color, "Hit Points: " + string(adv.hp), txt_scale); 
draw_text_outlined(start_x + 300, start_y, c_black, text_color, "Damage Reduction: " + string(0.25 * (adv.str / 125)) + "%", txt_scale); start_y += spacing;

draw_text_outlined(start_x, start_y, c_black, text_color, "Magic Points: " + string(adv.mp), txt_scale); 
draw_text_outlined(start_x + 300, start_y, c_black, text_color, "Evasion Rate: " + string(0.25 * (adv.dex / 125)) + "%", txt_scale); start_y += spacing;

draw_text_outlined(start_x, start_y, c_black, text_color, "Strength: " + string(adv.str), txt_scale);
draw_text_outlined(start_x + 300, start_y, c_black, text_color, "Crit Rate: " + string(0.25 * (adv.skl / 125)) + "%", txt_scale); start_y += spacing;

draw_text_outlined(start_x, start_y, c_black, text_color, "Dexterity: " + string(adv.dex), txt_scale); start_y += spacing;
draw_text_outlined(start_x, start_y, c_black, text_color, "Intelligence: " + string(adv.int), txt_scale); start_y += spacing;
draw_text_outlined(start_x, start_y, c_black, text_color, "Faith: " + string(adv.fth), txt_scale); start_y += spacing;
draw_text_outlined(start_x, start_y, c_black, text_color, "Skill: " + string(adv.skl), txt_scale); start_y += spacing;

//Apply Button
button_xscale = 250;
button_yscale = 55;
button_x = 25;
button_y = start_y + 20;

draw_rectangle(button_x, button_y, button_x+button_xscale, button_y+button_yscale, 0);
draw_rectangle_color(button_x, button_y, button_x+button_xscale, button_y+button_yscale, c_black,c_black,c_black,c_black, 1);

if within(button_y, button_y+button_yscale, mG_y)
{
	if(within(button_x, button_x+button_xscale,mG_x))
	{ 
		text_color = c_green;
		
		if(mouse_check_button_pressed(mb_left))
		{
			event_user(1);
		}
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
draw_text_outlined(button_x + (button_xscale / 2), button_y + (button_yscale/3), c_black, text_color, "Apply", 1);
draw_set_halign(fa_left);

//Reset Button
button_xscale = 250;
button_yscale = 27.5;
button_x = 25;
button_y = start_y + 80;

draw_rectangle(button_x, button_y, button_x+button_xscale, button_y+button_yscale, 0);
draw_rectangle_color(button_x, button_y, button_x+button_xscale, button_y+button_yscale, c_black,c_black,c_black,c_black, 1);

if within(button_y, button_y+button_yscale, mG_y)
{
	if(within(button_x, button_x+button_xscale,mG_x))
	{ 
		text_color = c_green;
		
		if(mouse_check_button_pressed(mb_left))
		{
			event_user(2);
		}
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
draw_text_outlined(button_x + (button_xscale / 2), button_y + (button_yscale/3) - 5, c_black, text_color, "Reset", 1);
draw_set_halign(fa_left);



start_y = 25 + (spacing * 5);
start_x = 200;

for(i = 0; i < 7; i++)
{
	button_xscale = 20;
	button_yscale = 20;
	button_x = start_x;
	button_y = start_y;
	
	if within(button_y, button_y+button_yscale, mG_y)
	{
		if(within(button_x, button_x+button_xscale,mG_x))
		{ 
			text_color = c_green;
			if(mouse_check_button_pressed(mb_left))
			{
				choice = i;
				amount = -stat_bump;
				sp_pnt = -1;
				event_user(0);
			}
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
	
	draw_rectangle(button_x, button_y, button_x+button_xscale, button_y+button_yscale, 0); 
	draw_text_outlined(button_x + 5, button_y, c_black, text_color, "-", 1);
	button_x += spacing;
	
	if within(button_y, button_y+button_yscale, mG_y)
	{
		if(within(button_x, button_x+button_xscale,mG_x))
		{ 
			text_color = c_green;
			
			if(mouse_check_button_pressed(mb_left))
			{
				choice = i;
				amount = stat_bump;
				sp_pnt = 1;
				event_user(0);
			}
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
	
	draw_rectangle(button_x, button_y, button_x+button_xscale, button_y+button_yscale, 0); 
	draw_text_outlined(button_x + 5, button_y, c_black, text_color, "+", 1);
	button_x -= spacing; start_y += spacing;
	
	
	
	if(spent_per_stat[adv_index, i] > 0)
		text_color = c_green;
	else
		text_color = c_white;
	
	draw_text_outlined(button_x + 65, button_y, c_black, text_color, string(spent_per_stat[adv_index, i]), 1);

}