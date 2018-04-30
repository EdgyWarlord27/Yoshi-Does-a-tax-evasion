//Horizontal Collision
if (place_meeting(x+obj_player.hsp,y,obj_player_red))
{
	while (!place_meeting(x+sign(obj_player.hsp),y,obj_player_red))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+obj_player.vsp,obj_player_red)) {
	while (!place_meeting(x,y+sign(vsp),obj_player_red))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (place_meeting(x,y+1,obj_player_red)) && (key_jump)  {
	vsp = -7;
}
if (place_meeting(x,y+1,obj_player_red))
{
	sprite_index = spr_player
	image_speed = 0.5;
}