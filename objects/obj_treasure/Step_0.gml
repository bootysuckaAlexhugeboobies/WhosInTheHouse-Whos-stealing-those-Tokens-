if obj_player.character == "S"
	instance_destroy();
if sprite_index == sprgot && obj_player.state != states.gottreasure
	instance_destroy();

if sprite_index != sprgot
	sprite_index = spridle

var p = instance_place(x, y, obj_player);
if p && !player && p.state != states.gameover
{
	/*
	if global.gameplay != 0 && global.musicgame == 1
	{
		instance_create_depth(0, 0, 0, obj_levelendfade);
		instance_destroy();
	}
	else
	*/
	{
		with p
		{
			if grounded
			{
				sprite_index = spr_gottreasure
				
				treasure_x = x
				treasure_y = y
				treasure_room = room
				
				if sprite_index == spr_playerSP_gottreasure
				{
					treasure_x -= 25 * xscale;
					treasure_y -= 20;
				}
				
				global.treasure = true
				hsp = 0
				vsp = 0
				
				if other.sprite_index == other.spridle
				{
					other.alarm[0] = 150
					state = states.gottreasure
					scr_soundeffect(sfx_secretfound)
					ds_list_add(global.saveroom, other.id) 
				}
				
				other.sprite_index = other.sprgot
				sprgot = other.sprgot
				other.x = treasure_x
				other.y = treasure_y - 35
				other.player = true
				
				if global.gameplay == 0
				{
					with obj_tv
					{
						showtext = true
						message = "YOU GOT THE TOWER SECRET TREASURE!"
						alarm[2] = 200
					}
				}
				else
					global.combotime = 60;
				
				if global.timeattack with obj_timeattack
					stop = true;
			} 
		}
	}
}