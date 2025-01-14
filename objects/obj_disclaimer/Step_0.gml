function outback(arg0, arg1, arg2, arg3)
{
	var _s = 1;

	arg0 = arg0/arg3 - 1;
	return arg2 * (arg0 * arg0 * ((_s + 1) * arg0 + _s) + 1) + arg1;
}
function incubic(arg0, arg1, arg2, arg3) {
	return arg2 * power(arg0/arg3, 3) + arg1;
}

// animation
if con == 0
{
	t += 0.1;
	size = outback(t, 0, 1, 1);
	
	if t >= 1
	{
		t = 0;
		con = 1;
	}
}
if con == 2
{
	t = min(t + 0.15, 1)
	size = 1 - incubic(t, 0, 1, 1);
}

// no net
if net != os_is_network_connected()
{
	audio_stop_all();
	room_restart();
}

// input
if (cancon or debug or !drm)
&& (con == 1 or (showwait && debug))
{
	with obj_wc
	{
		if WC_consoleopen && !debug
		{
			room_goto(room_of_dog);
			exit;
		}
	}
	
	scr_getinput();
	if keyboard_check_pressed(vk_enter) or key_jump
	{
		audio_stop_all();
		scr_soundeffect(sfx_diagclose);
		con = 2;
		alarm[0] = room_speed / 2;
	
		ini_open("saveData.ini");
		ini_write_real("online", "disclaimer", true);
		ini_close();
	}
}

if debug && keyboard_check_pressed(ord("R"))
{
	audio_stop_all();
	room_restart();
}