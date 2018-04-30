//Horizontal Collision
if (place_meeting(x+obj_player_red.hsp,y,obj_player))
{
	while (!place_meeting(x+sign(obj_player_red.hsp),y,obj_player))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+obj_player_red.vsp,obj_player)) {
	while (!place_meeting(x,y+sign(vsp),obj_player))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (place_meeting(x,y+1,obj_player)) && (key_jump)  {
	vsp = -7;
}
if (place_meeting(x,y+1,obj_player))
{
	sprite_index = spr_player2
	image_speed = 0.5;
}
