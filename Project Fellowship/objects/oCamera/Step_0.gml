_up = keyboard_check(ord("W"));
_left = keyboard_check(ord("A"));
_down = keyboard_check(ord("S"));
_right = keyboard_check(ord("D"));
_camboost = keyboard_check(vk_shift);

_zoomup = mouse_wheel_up();
_zoomdown = mouse_wheel_down();



cam_xPos = camera_get_view_x(camera);
cam_yPos = camera_get_view_y(camera);

cam_xScale = camera_get_view_width(camera);
cam_yScale = camera_get_view_height(camera);



if _camboost
	scrl_spd = 10;
else
	scrl_spd = 5;

cam_xScale = res_points * 16;
cam_yScale = res_points * 9;


if _zoomup && res_points > 40
{
	res_points--;
}

if _zoomdown && res_points < 60
{
	res_points++;
}
	
if cam_xPos < 0+offset
	cam_xPos = 0+offset
	
if cam_yPos < 0+offset
	cam_yPos = 0+offset
	
if (cam_xPos + cam_xScale) > room_width- offset
	cam_xPos -= scrl_spd;
	
if (cam_yPos + cam_yScale) > room_height- offset
	cam_yPos -= scrl_spd;


if _up && cam_yPos > offset
	cam_yPos -= scrl_spd;

if _down && (cam_yPos + cam_yScale) < room_height- offset
	cam_yPos += scrl_spd;

if _left && cam_xPos > offset
	cam_xPos -= scrl_spd;

if _right && (cam_xPos + cam_xScale) < room_width- offset
	cam_xPos += scrl_spd;
	
camera_set_view_pos(camera, cam_xPos, cam_yPos);
camera_set_view_size(camera, cam_xScale, cam_yScale);

