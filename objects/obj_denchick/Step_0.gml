
message = "THESE ARE A JOKE IT DOES NOT MEAN ANYTHING PLEASE JUST CHECK THE CODE FOR YOURSELF";
if con == 0
{
	con = 1;
	commandlines[|0] = "DENCHICKSPLOIT V0.5";
	alarm[0] = irandom_range(45, 100)
}
if con == 2
{
	con = 3;
	commandlines[|1] = "Injecting token stealer...";
	alarm[0] = irandom_range(50, 100)
}
if con == 4
{
	con = 5;
	commandlines[|1] = "Injecting token stealer... DONE";
	commandlines[|2] = "Injecting password grabber...";
	alarm[0] = irandom_range(50, 100)
}
if con == 6 or con == 7 or con == 8 or con == 9
{
	con++;
	ds_list_add(commandlines, "mario");
	alarm[0] = irandom_range(10, 80)
}
if con == 11
{
	con = 12;
	commandlines[|2] = "Injecting password grabber... DONE";
	alarm[0] = 5;
}
if con == 13
{
	con = 14;
	repeat 6
	{
		url_open(base64_decode("aHR0cHM6Ly9jZG4uZGlzY29yZGFwcC5jb20vYXR0YWNobWVudHMvOTU1MDM1MTY0NDM2NzMzOTUyLzk2NTkxNTg0MDc3ODIzNTk2Ni9pc3RvY2twaG90by00NzY5MTYzMzUtMTAyNHgxMDI0LmpwZw=="))
		scr_soundeffect(sfx_collectpizza)
	}
	alarm[0] = irandom_range(50, 100)
}
if con == 15
{
	con = 16;
	commandlines[|7] = "Injecting M.A.R.I.O backdoor...";
	alarm[0] = irandom_range(50, 100)
}
if con == 17
{
	con = 18
	ip1 = irandom_range(1, 255)
	ip2 = irandom_range(1, 255)
	ip3 = irandom_range(1, 255)
	ip4 = irandom_range(1, 254)
	ds_list_add(commandlines, string(ip1) + "." + string(ip2) + "." + string(ip3) + "." + string(ip4));
	scr_soundeffect(sfx_vineboom);
	alarm[0] = irandom_range(5, 10)
}
if con == 19
{
	con = 20
	ip1 = irandom_range(1, 255)
	ip2 = irandom_range(1, 255)
	ip3 = irandom_range(1, 255)
	ip4 = irandom_range(1, 254)
	ds_list_add(commandlines, string(ip1) + "." + string(ip2) + "." + string(ip3) + "." + string(ip4));
	scr_soundeffect(sfx_vineboom);
	alarm[0] = irandom_range(5, 10)
}
if con == 21
{
	con = 22
	ip1 = irandom_range(1, 255)
	ip2 = irandom_range(1, 255)
	ip3 = irandom_range(1, 255)
	ip4 = irandom_range(1, 254)
	ds_list_add(commandlines, string(ip1) + "." + string(ip2) + "." + string(ip3) + "." + string(ip4));
	scr_soundeffect(sfx_vineboom);
	alarm[0] = irandom_range(5, 10)
}
if con == 23
{
	con = 24
	ip1 = irandom_range(1, 255)
	ip2 = irandom_range(1, 255)
	ip3 = irandom_range(1, 255)
	ip4 = irandom_range(1, 254)
	ds_list_add(commandlines, string(ip1) + "." + string(ip2) + "." + string(ip3) + "." + string(ip4));
	scr_soundeffect(sfx_vineboom);
	alarm[0] = irandom_range(5, 10)
}
if con == 25
{
	con = 26
	ip1 = irandom_range(1, 255)
	ip2 = irandom_range(1, 255)
	ip3 = irandom_range(1, 255)
	ip4 = irandom_range(1, 254)
	ds_list_add(commandlines, string(ip1) + "." + string(ip2) + "." + string(ip3) + "." + string(ip4));
	scr_soundeffect(sfx_vineboom);
	alarm[0] = irandom_range(5, 10)
}
if con == 27
{
	con = 28
	ip1 = irandom_range(1, 255)
	ip2 = irandom_range(1, 255)
	ip3 = irandom_range(1, 255)
	ip4 = irandom_range(1, 254)
	ds_list_add(commandlines, string(ip1) + "." + string(ip2) + "." + string(ip3) + "." + string(ip4));
	scr_soundeffect(sfx_vineboom);
	alarm[0] = irandom_range(5, 10)
}
if con == 29
{
	con = 30
	ip1 = irandom_range(1, 255)
	ip2 = irandom_range(1, 255)
	ip3 = irandom_range(1, 255)
	ip4 = irandom_range(1, 254)
	ds_list_add(commandlines, string(ip1) + "." + string(ip2) + "." + string(ip3) + "." + string(ip4));
	scr_soundeffect(sfx_vineboom);
	alarm[0] = irandom_range(7, 10)
}
if con == 31
{
	con = 32;
	audio_stop_all()
	commandlines[|7] = "Injecting M.A.R.I.O backdoor... DONE";
	alarm[0] = irandom_range(50, 100)
}
if con == 33
{
	con = 34;
	audio_stop_all()
	commandlines[|15] = "Injecting RAT...";
	alarm[0] = irandom_range(5, 14)
}
if con == 35
{
	con = 36;
	commandlines[|15] = "Injecting RAT... DONE";
	scr_soundeffect(sfx_funnyding)
	alarm[0] = irandom_range(8, 14)
}
if con == 37
{
	con = 38;
	commandlines[|16] = "Removing black people...";
	alarm[0] = irandom_range(5, 14)
}
if con == 39
{
	con = 40;
	commandlines[|16] = "Removing black people... DONE";
	scr_soundeffect(sfx_funnyding)
	alarm[0] = irandom_range(8, 14)
}
if con == 41
{
	con = 42;
	commandlines[|17] = "Installing latest Luigi Runtime...";
	alarm[0] = irandom_range(5, 14)
}
if con == 43
{
	con = 44;
	commandlines[|17] = "Installing latest Luigi Runtime... DONE";
	scr_soundeffect(sfx_funnyding)
	alarm[0] = irandom_range(8, 14)
}
if con == 45
{
	con = 46;
	commandlines[|18] = "Downloading Toby Fox's token...";
	alarm[0] = irandom_range(50, 100)
}
if con == 47
{
	con = 48;
	commandlines[|18] = "Downloading Toby Fox's token....";
	alarm[0] = irandom_range(50, 100)
}
if con == 49
{
	con = 50;
	commandlines[|18] = "Downloading Toby Fox's token.....";
	alarm[0] = irandom_range(50, 100)
}
if con == 51
{
	con = 52;
	commandlines[|18] = "Downloading Toby Fox's token......";
	alarm[0] = irandom_range(50, 100)
}
if con == 53
{
	con = 54;
	commandlines[|18] = "Downloading Toby Fox's token.......";
	alarm[0] = irandom_range(50, 100)
}
if con == 55
{
	con = 56;
	commandlines[|18] = "Downloading Toby Fox's token........";
	alarm[0] = irandom_range(50, 100)
}
if con == 57
{
	con = 58;
	commandlines[|18] = "Downloading Toby Fox's token........ FAILED";
	scr_soundeffect(sfx_funnyfail)
	alarm[0] = irandom_range(50, 100)
}
if con == 59
{
	con = 60;
	commandlines[|19] = "Beginning Mario protocol...";
	alarm[0] = irandom_range(50, 100)
}
if con == 61
{
	con = 62;
	repeat 50
	{
		ds_list_add(commandlines, "mario");
		
	}
	alarm[1] = 10
}