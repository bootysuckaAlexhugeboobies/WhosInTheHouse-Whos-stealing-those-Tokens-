// check version
if real(gms_ini_game_read("game", "version")) > obj_gms.gameversion
{
	if !debug
	{
		if !audio_is_playing(global.jukebox)
			audio_stop_all();
		instance_destroy(obj_gms);
		scr_soundeffect(sfx_pephurt);
		
		with obj_roomname
		{
			var msg = gms_ini_game_read("game", "outdatedtext");
			if msg == "default"
				message = "OUTDATED VERSION!";
			else
				message = msg;
			
			showtext = true;
			alarm[0] = -1;
		}
		
		with obj_prelogin
		{
			con = 2;
			playmusic = false;
		}
		
		gms_logout();
		instance_destroy();
		exit;
	}
	else
		trace("Server ver. " + string(gms_ini_game_read("game", "version")) + " Current ver. " + string(obj_gms.gameversion));
}
if !debug
	obj_gms.alarm[1] = 75;

obj_gms.alarm[3] = 1;
loading = true;

