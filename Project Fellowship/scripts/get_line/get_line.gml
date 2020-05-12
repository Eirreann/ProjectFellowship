line_id = argument0;
//language = argument1;
line = "";

//
switch(line_id)
{
	case "mallory_intro":
		line = "Good to meet you @player, the name's Mallory. Now how's about we get out of this cell, eh?"
		break;
	case "player_intro":
		line = "@player, call me @player.";
		break;
}

while(string_count("@player", line) > 0)
{
	line = string_replace(line, "@player", char_name);	
}

return line;