input_up_p = keyboard_check_pressed(global.key_up);
input_down_p = keyboard_check_pressed(global.key_down);
input_enter_p = keyboard_check_pressed(global.key_enter);
input_escape_p = keyboard_check_pressed(global.key_escape);

if(input_escape_p)
{
	global.pause = true;
	instance_deactivate_layer("Instances");
}

if(!global.pause) 
{
	instance_activate_layer("Instances"); 
	exit;
}

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

if(inputting)
{
	switch(ds_grid[# 1, menu_option[page]])
	{
		case menu_element_type.shift:
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if(hinput != 0)
			{
				//audio
				ds_grid[# 3, menu_option[page]] += hinput;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]]) - 1);
			}
		break;
		case menu_element_type.slider:
			switch(menu_option[page])
			{
				case 0: if(!audio_is_playing(character_boop_medium)){ audio_play_sound(character_boop_medium, 1, false); } break;
				case 1: if(!audio_is_playing(character_boop_medium)){ audio_play_sound(character_boop_medium, 1, false); } break;
				case 2: if(!audio_is_playing(character_boop_medium_low)){ audio_play_sound(character_boop_medium_low, 1, false); } break;
			}
			var hinput = keyboard_check(global.key_right) - keyboard_check(global.key_left);
			if(hinput != 0)
			{
				ds_grid[# 3, menu_option[page]] += hinput*0.01;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
				script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]);
			}
		break;
		case menu_element_type.toggle:
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if(hinput != 0)
			{
				//audio
				ds_grid[# 3, menu_option[page]] += hinput;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
			}
		break;
		case menu_element_type.input:
			var kk = keyboard_lastkey;
			if(kk != vk_enter)
			{
				if(kk != ds_grid[# 3, menu_option[page]]) 
				{
					//audio
					ds_grid[# 3, menu_option[page]] = kk;
					variable_global_set(ds_grid[# 2, menu_option[page]], kk);
				}
			}
		break;
	}
}
else
{	
	var ochange = input_down_p - input_up_p;
	if(ochange != 0){
		menu_option[page] += ochange;
		if(menu_option[page] > ds_height-1)
		{
			menu_option[page] = 0;
		}
		if(menu_option[page] < 0)
		{
			menu_option[page] = ds_height-1;
		}
		//audio
	}
}

if(input_enter_p)
{
	switch(ds_grid[# 1, menu_option[page]])
	{
		case menu_element_type.script_runner: script_execute(ds_grid[# 2, menu_option[page]]); break;
		case menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
		case menu_element_type.shift: 
		case menu_element_type.slider:
		case menu_element_type.toggle: if(inputting){ script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]); }
		case menu_element_type.input: 
			inputting = !inputting;
			break;
	}
	//audio
	
}
