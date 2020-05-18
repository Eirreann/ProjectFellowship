scene = argument0;
messages = 0;

switch(scene)
{
	case "mallory_intro":
		i = 0;
		messages[i,0] = "???"; messages[i,1] = "where..."; i++;
		messages[i,0] = "???"; messages[i,1] = "Where am I?"; i++;
		messages[i,0] = "Mallory"; messages[i,1] = "Oh good, you're awake. Glad they didn't just dump another corpse in here with me. Are you okay? Looks like they roughed you up pretty badly."; i++;
		messages[i,0] = "???"; messages[i,1] = "Wasn't them... I'm fine..."; i++;
		messages[i,0] = "Mallory"; messages[i,1] = "You're hardly fine. You're bleeding on the floor. What's your name?"; i++;
		messages[i,0] = "???"; messages[i,1] = "I... don't remember."; i++;
		messages[i,0] = "Mallory"; messages[i,1] = "Really? Well if you don't know your name, what do I call you?"; i++;
		messages[i,0] = "What's your name?"; messages[i,1] = "@input"; i++;
		messages[i,0] = "@player"; messages[i,1] = "@player. Call me @player."; i++;
		messages[i,0] = "Mallory"; messages[i,1] = "@player. Good name. Well, you can call me Mallory. You've probably heard of me. I'm the sharpest shot in the whole continent."; i++;
		messages[i,0] = "@player"; messages[i,1] = "Maybe I have... or maybe I did... I don't remember."; i++;
		messages[i,0] = "Mallory"; messages[i,1] = "Right... makes sense. Guess I'll just have to show you what I can do when we get out of here."; i++;
		messages[i,0] = "Mallory"; messages[i,1] = "You look kinda rough and tumble. Guess that means you know your way around a sword, right?"; i++;
		messages[i,0] = "@player"; messages[i,1] = "I guess we'll find out."; i++;
		break;
		
	case "mallory_player_prisonbreak":
		i = 0;
		messages[i,0] = "@player"; messages[i,1] = "Mallory! You shouldn't be here. None of you should. This is my punishment, I deserve this."; i++;
		messages[i,0] = "Mallory"; messages[i,1] = "Maybe. But there's more than one way to make up for your mistakes, boss. You can do more good alive than dead, I believe that."; i++;
		messages[i,0] = ""; messages[i,1] = ""; i++;
		break;
}

return messages;

