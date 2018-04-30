key_left = false;
key_right = false;
key_jump = false;

if (obj_control_switching.current_player == 0) {
	//Get Player Input
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);

	if (place_meeting(x,y+1,obj_wall)) && (key_jump) {
		vsp = -7;
	}	
}
var move = key_right - key_left;

vsp = vsp + grv;
hsp = move * walksp;


//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (place_meeting(x, y+1, obj_player)) && (key_jump) {
	vsp = -7;
}
 
//Animation
if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_player_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 2; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player;
		image_speed = 0.5;
	}
	else
	{
		sprite_index = spr_player_walk
		image_speed = 1;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
