i_cooldowns = [room_speed*r_cooldowns[0], room_speed*r_cooldowns[1], room_speed*r_cooldowns[2]];

skill_1 = keyboard_check_pressed(ord(1));
skill_2 = keyboard_check_pressed(ord(2));
skill_3 = keyboard_check_pressed(ord(3));

if(skill_1 && c_cooldowns[0] == 0) { c_cooldowns[0] = i_cooldowns[0]; }
if(skill_2 && c_cooldowns[1] == 0) { c_cooldowns[1] = i_cooldowns[1]; }
if(skill_3 && c_cooldowns[2] == 0) { c_cooldowns[2] = i_cooldowns[2]; }

if(c_cooldowns[0] > 0) { c_cooldowns[0]--; }
if(c_cooldowns[1] > 0) { c_cooldowns[1]--; }
if(c_cooldowns[2] > 0) { c_cooldowns[2]--; }