with instance_place(x, y - 1, obj_player1)
{
	if state != states.gameover && state != states.mach3 && sprite_index != spr_mach3boost
	{
		if character != "V"
		{
			scr_transfobump(false);
			
			image_blend = c_white
			image_index = 0
			state = states.fireass
			vsp = global.gameplay == 0 ? -21 : -14
			instance_create(x, y + 20, obj_piranneapplewater)
			if character == "P" or character == "N" or character == "SP"
				sprite_index = spr_scaredjump1
			else
				sprite_index = spr_fireass
			
			if global.gameplay != 0
				movespeed = hsp
			
			with instance_create(x, y, obj_superdashcloud)
				sprite_index = spr_watereffect
			
			audio_stop_sound(sfx_fireassend);
			scr_soundeffect(sfx_fireassend);
		}
		else
		{
			if state == states.tumble
				state = states.normal;
			scr_hurtplayer(id);
		}
	}
}
with instance_place(x, y - 1, obj_baddie)
	event_perform(ev_collision, obj_boilingsauce);
