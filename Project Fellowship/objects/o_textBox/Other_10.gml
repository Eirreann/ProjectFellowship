if(_messages[_msg_indx, 1] == "@input")
{
	_input_msg = keyboard_string + t_cursor;	
}

tX = box_x1 + 10;
tY = box_y2 + 10;

draw_text_outlined(tX, tY, c_black, c_white, _name, 1);

tY += 40;

draw_set_color(c_black);
draw_text_ext_transformed(tX-1, tY-1, _input_msg, 20, box_xscale-25,  1, 1, 0);
draw_text_ext_transformed(tX, tY-1, _input_msg, 20, box_xscale-25,  1, 1, 0);
draw_text_ext_transformed(tX+1, tY-1, _input_msg, 20, box_xscale-25,  1, 1, 0);
draw_text_ext_transformed(tX-1, tY, _input_msg, 20, box_xscale-25,  1, 1, 0);
draw_text_ext_transformed(tX+1, tY, _input_msg, 20, box_xscale-25,  1, 1, 0);
draw_text_ext_transformed(tX-1, tY+1, _input_msg, 20, box_xscale-25,  1, 1, 0);
draw_text_ext_transformed(tX, tY+1, _input_msg, 20, box_xscale-25,  1, 1, 0);
draw_text_ext_transformed(tX+1, tY+1, _input_msg, 20, box_xscale-25,  1, 1, 0);

draw_set_color(c_white);
draw_text_ext_transformed(tX, tY, _input_msg, 20, box_xscale-25,  1, 1, 0);