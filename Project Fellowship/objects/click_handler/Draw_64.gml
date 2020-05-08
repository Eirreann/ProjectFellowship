if(grabbed_object != noone)
{
	name = grabbed_object.details.name;
	class = grabbed_object.details.class.name;
}
else
{
	name = "Empty";
	class = "None";
}

draw_text_outlined(25, 25,c_black,c_white, "Name: " + string(name), 1);
draw_text_outlined(25, 45,c_black,c_white, "Class: " + string(class), 1);