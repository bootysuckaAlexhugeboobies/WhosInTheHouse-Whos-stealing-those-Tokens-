if !instance_exists(playerid) or playerid.state != states.normal
	instance_destroy()
else
{
	image_xscale = playerid.xscale
	x = playerid.x
	y = playerid.y
}

