/// @description savedata and login
if loadsave
{
	global.logged = true;
	if !gms_self_isguest()
	{
		if !gms_ini_player_exists("saveData", "lastversion")
		or gms_ini_player_read("saveData", "lastversion") != obj_gms.gameversion
			gms_ini_player_write("saveData", "lastversion", obj_gms.gameversion);
	}
	
	// pizzacoin
	scr_setcoin(0);
	if gms_ini_player_exists("saveData", "pizzacoin")
		scr_setcoin(gms_ini_player_read("saveData", "pizzacoin"));
	else
	{
		if !gms_self_isguest()
			gms_ini_player_write("saveData", "pizzacoin", 0);
	}
	global.pizzacoinstart = global.pizzacoin;
	
	// hat unlocks
	global.hatunlock = [];
	for(var i = 0; i < HATS.length; i++)
	{
		if gms_ini_player_exists("hats", i)
			global.hatunlock[i] = true;
	}
	
	if gms_ini_player_read("saveData", "customlock") == "P"
	{
		with obj_player
		{
			character = "N";
			paletteselect = 0;
			scr_characterspr();
		}
	}

	// travel
	audio_stop_all();

	scr_soundeffect(sfx_collecttoppin);
	with obj_player
	{
		targetDoor = "A";
		targetRoom = hub_room1;
		state = states.door;
	}
	instance_create(x, y, obj_fadeout);
	
	with obj_shell
		WC_debug = gms_self_admin_rights();
}
else
	alarm[3] = 10;

