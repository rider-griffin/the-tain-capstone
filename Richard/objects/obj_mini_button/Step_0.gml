if(point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2))
{
	image_xscale = 1.10;
	image_yscale = 1.10;
	if(mouse_check_button_pressed(mb_left))
	{
		pressed = true;
	}
	if(mouse_check_button_pressed(mb_left) && pressed == true)
	{
		image_alpha = 0.8;
	}
	if(mouse_check_button_released(mb_left) && image_index != 8)
	{
		image_alpha = 1;
		var pass = get_string("Please enter the password","");
		if(pass == "level1" && image_index == 0)
		{
			//var rm = asset_get_index(room_name);
			room_goto(room_main_menu);
		}
		else if(pass == "level2" && image_index == 1)
		{
			//var rm = asset_get_index(room_name);
			room_goto(room_main_menu);
		}
		else if(pass == "level3" && image_index == 2)
		{
			//var rm = asset_get_index(room_name);
			room_goto(room_main_menu);
		}
		else if(pass == "level4" && image_index == 3)
		{
			//var rm = asset_get_index(room_name);
			room_goto(room_main_menu);
		}
		else if(pass == "level5" && image_index == 4)
		{
			//var rm = asset_get_index(room_name);
			room_goto(room_main_menu);
		}
		else if(pass == "level6" && image_index == 5)
		{
			//var rm = asset_get_index(room_name);
			room_goto(room_main_menu);
		}
		else if(pass == "level7" && image_index == 6)
		{
			//var rm = asset_get_index(room_name);
			room_goto(room_main_menu);
		}
		else if(pass == "level8" && image_index == 7)
		{
			//var rm = asset_get_index(room_name);
			room_goto(room_main_menu);
		}
		else
		{
			show_message("Wrong Password!");
		}
		pressed=false;
	}
	else if(mouse_check_button_released(mb_left) && image_index == 8)
	{
		if(room == room_mini_games_menu)
		{	
			image_alpha = 1;
			room_goto(room_main_menu);
			//obj_title_menu_controller.pos = 2;
			pressed=false;
		}
		else
		{
			image_alpha = 1;
			room_goto(room_mini_games_menu);
			pressed=false;
		}
	}
}
else
{
	image_xscale = 1;
	image_yscale = 1;
	image_alpha = 1;
}
