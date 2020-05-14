draw_text_outlined(25, 25, c_black, c_white, "Enter the wanderer's name: " + string(name) + t_cursor, 1);


if(character_gender == "(M)")
{
	gender_string = character_gender + " >";
}
else
{
	gender_string = "< " + character_gender;	
}

draw_text_outlined(25, 45, c_black, c_white, "Gender: " + string(gender_string), 1);

draw_text_outlined(25, 65, c_black, c_white, "Character limit is " + string(limit)+ ".", 1);            