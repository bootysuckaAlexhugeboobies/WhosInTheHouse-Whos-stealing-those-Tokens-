if index >= 0 && sprite_index == spr_taximove
{
	with playerid
	{
		x = other.xx
		y = other.yy
	}
	alarm[0] = 10
	sprite_index = spr_taxiidle
	
	with instance_create(xx - 960 / 2, yy, obj_taxidud)
	{
		playerid = other.playerid;
		sign_id = other.sign_id;
	}
}

