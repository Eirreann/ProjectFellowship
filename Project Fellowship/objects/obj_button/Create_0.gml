btn_id = "recruit";

text_color = c_white;

button_xscale = 225;
button_yscale = 75;

start_x = 25;
start_y = 130;

buttons[0] = "recruit";
buttons[1] = "manage";

button_txt[0] = "Recruit Adventurer";
button_txt[1] = "Manage Adventurers";

reputation = obj_basicUI.reputation;
max_reputation = obj_basicUI.max_reputation;

adventurers = ds_list_create();
e_adventurers = ds_list_create();

target_list = adventurers;

event_user(1);