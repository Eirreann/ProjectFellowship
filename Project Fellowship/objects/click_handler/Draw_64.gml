if(grabbed_object != noone)
{
	name = grabbed_object.details.name;
	surname = grabbed_object.details.surname;
	class = grabbed_object.details.class.name;
}
else
{
	name = "Empty";
	surname = "";
	class = "None";
}

draw_text_outlined(25, 25,c_black,c_white, "Name: " + string(name) + " " + string(surname), 1);
draw_text_outlined(25, 45,c_black,c_white, "Class: " + string(class), 1);
draw_text_outlined(25, 65,c_black,c_white, string(hover_id), 1);

