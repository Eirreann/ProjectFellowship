adv.hp -= 10 * spent_per_stat[adv_index, 0];
adv.mp -= 10 * spent_per_stat[adv_index, 1];
adv.str -= 10 * spent_per_stat[adv_index, 2];
adv.dex -= 10 * spent_per_stat[adv_index, 3];
adv.int -= 10 * spent_per_stat[adv_index, 4];
adv.fth -= 10 * spent_per_stat[adv_index, 5];
adv.skl -= 10 * spent_per_stat[adv_index, 6];

for(k = 0; k < 7; k++)
{
	spent_per_stat[adv_index, k] = 0;
}

adv._av_points += points_spent;
points_spent = 0;