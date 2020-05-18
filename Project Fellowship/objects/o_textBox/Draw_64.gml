while(string_count("@player", messages[_msg_indx, 0]) > 0)
{
	messages[_msg_indx, 0] = string_replace(messages[_msg_indx, 0], "@player", character_name);	
}
	
while(string_count("@player", messages[_msg_indx, 1]) > 0)
{
	messages[_msg_indx, 1] = string_replace(messages[_msg_indx, 1], "@player", character_name);	
}	
	
if(_msg_indx < array_height_2d(_messages))
{

	box_xscale = 600;
	box_yscale = 150;

	box_x1 = 25;
	box_x2 = box_x1 + box_xscale;

	box_y1 = window_get_height() - 25;
	box_y2 = box_y1 - box_yscale;

	draw_set_alpha(0.5);
	draw_rectangle_color(box_x1, box_y2, box_x2, box_y1, c_black, c_black, c_black, c_black, 0);
	draw_rectangle_color(box_x1, box_y2, box_x2, box_y1 - 110, c_black, c_black, c_black, c_black, 0);
	draw_set_alpha(1);

	event_user(0);
}