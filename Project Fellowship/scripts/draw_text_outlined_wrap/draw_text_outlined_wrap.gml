/// draw_text_outlined(x, y, line separation, box width, outline color, string color, string, size)
var xx,yy,size;
xx = argument[0];
yy = argument[1];
size = argument[5];

//Outline
draw_set_color(argument[2]);
draw_text_ext_transformed(xx+1, yy+1, argument[6], argument[3], argument[4],  size, size, 0);
draw_text_ext_transformed(xx-1, yy-1, argument[6], argument[3], argument[4], size, size, 0);
draw_text_ext_transformed(xx,   yy+1, argument[6], argument[3], argument[4], size, size, 0);
draw_text_ext_transformed(xx+1,   yy, argument[6], argument[3], argument[4], size, size, 0);
draw_text_ext_transformed(xx,   yy-1, argument[6], argument[3], argument[4], size, size, 0);
draw_text_ext_transformed(xx-1,   yy, argument[6], argument[3], argument[4], size, size, 0);
draw_text_ext_transformed(xx-1, yy+1, argument[6], argument[3], argument[4], size, size, 0);
draw_text_ext_transformed(xx+1, yy-1, argument[6], argument[3], argument[4], size, size, 0);

//Text
draw_set_color(argument[3]);
draw_text_ext_transformed(xx, yy, argument[6], argument[3], argument[4], size, size, 0);

draw_set_color(c_white);