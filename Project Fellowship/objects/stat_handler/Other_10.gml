if(points_spent == 0 && amount < 0)
{
	
}
else if(adv._av_points > 0 && amount > 0) || (spent_per_stat[adv_index, choice] > 0 && amount < 0)
{
	switch(choice)
	{
		case 0:
			adv.hp += amount;
			spent_per_stat[adv_index, choice] += sp_pnt;
			break;
		case 1:
			adv.mp += amount;
			spent_per_stat[adv_index, choice] += sp_pnt;
			break;
		case 2:
			adv.str += amount;
			spent_per_stat[adv_index, choice] += sp_pnt;
			break;
		case 3:
			adv.dex += amount;
			spent_per_stat[adv_index, choice] += sp_pnt;
			break;
		case 4:
			adv.int += amount;
			spent_per_stat[adv_index, choice] += sp_pnt;
			break;
		case 5:
			adv.fth += amount;
			spent_per_stat[adv_index, choice] += sp_pnt;
			break;
		case 6:
			adv.skl += amount;
			spent_per_stat[adv_index, choice] += sp_pnt;
			break;
	}
		
	if amount < 0 && points_spent > 0
	{
		adv._av_points++;
		points_spent--;
	}
	else
	{
		points_spent++;
		adv._av_points--;
	}
}