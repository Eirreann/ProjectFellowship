if(keyboard_check(vk_left))
{
	reputation-= 100;
}
else if(keyboard_check(vk_right))
{
	reputation+= 100;
}

if(reputation >= max_reputation)
	reputation = max_reputation;
else if(reputation <= 0)
	reputation = 0;
	
rep_per = (reputation / max_reputation) * 100;

if(rep_per == 100)
{
	rank = "Legendary";
}
else if(rep_per == 0)
{
	rank = "Forgotten";	
}
else if(within(0,10,rep_per))
{
	rank = "Despised";	
}
else if(within(10,40,rep_per))
{
	rank = "Regarded";	
}
else if(within(40,60,rep_per))
{
	rank = "Renowned";	
}
else if(within(60,80, rep_per))
{
	rank = "Celebrated";	
}
else if(within(80,100, rep_per))
{
	rank = "Notorious";	
}
else
{
	rank = "This wasn't supposed to happen";	
}