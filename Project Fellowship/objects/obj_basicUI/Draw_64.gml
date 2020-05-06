ui_x = 25;
ui_y = 25;

rep_per = (reputation / max_reputation) * 100;

draw_text_outlined(ui_x,ui_y,c_black,c_white,"Company Reputation, " + rank, 1); ui_y += 20;

do_health(ui_x, ui_y, 250, 20, rep_per);
draw_text_outlined(ui_x,ui_y,c_black,c_white,string(reputation) + " / " + string(max_reputation), 1); ui_y += 30;

draw_text_outlined(ui_x,ui_y,c_black,c_white,"Company Funds", 1); ui_y += 20;
draw_text_outlined(ui_x,ui_y,c_black,c_white, string(money) + gold_char, 1); ui_y+=20;


