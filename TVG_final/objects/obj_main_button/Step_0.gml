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
	if(mouse_check_button_released(mb_left) && image_index != 14)
	{
		image_alpha = 1;
		var pass = get_string("Please enter the password","");
		if(pass == "Honor" && image_index == 0)
		{
			//var rm = asset_get_index(room_name);
			room_goto(PillowTalk);
		}
		else if(pass == "Legacy" && image_index == 1)
		{
			//var rm = asset_get_index(room_name);
			room_goto(Fort);
		}
		else if(pass == "Poetry" && image_index == 2)
		{
			//var rm = asset_get_index(room_name);
			room_goto(F_Woods);
		}
		else if(pass == "Strength" && image_index == 3)
		{
			//var rm = asset_get_index(room_name);
			room_goto(F_Connacht_camp);
		}
		else if(pass == "Bravery" && image_index == 4)
		{
			//var rm = asset_get_index(room_name);
			room_goto(Combat);
		}
		else if(pass == "Equality" && image_index == 5)
		{
			//var rm = asset_get_index(room_name);
			room_goto(F_Connacht_camp);
		}
		else if(pass == "Stories" && image_index == 6)
		{
			//var rm = asset_get_index(room_name);
			room_goto(F_1v1_battles);
		}
		else if(pass == "Wealth" && image_index == 7)
		{
			//var rm = asset_get_index(room_name);
			room_goto(F_Connacht_camp);
		}
		else if(pass == "Religion" && image_index == 8)
		{
			//var rm = asset_get_index(room_name);
			room_goto(F_Connacht_camp);
		}
		else if(pass == "Humor" && image_index == 9)
		{
			//var rm = asset_get_index(room_name);
			room_goto(F_1v1_battles);
		}
		else if(pass == "Beauty" && image_index == 10)
		{
			//var rm = asset_get_index(room_name);
			room_goto(F_1v1_battles);
		}
		else if(pass == "Loyalty" && image_index == 11)
		{
			//var rm = asset_get_index(room_name);
			room_goto(TD_Cuchulain_camp);
		}
		else if(pass == "Kinship" && image_index == 12)
		{
			//var rm = asset_get_index(room_name);
			room_goto(TD_Cuchulain_camp);
		}
		else if(pass == "Pride" && image_index == 13)
		{
			//var rm = asset_get_index(room_name);
			room_goto(F_Final_battle);
		}
		else
		{
			show_message("Wrong Password!");
		}
		pressed=false;
	}
	else if(mouse_check_button_released(mb_left) && image_index == 14)
	{
		if(room == room_main_games_menu)
		{	
			image_alpha = 1;
			room_goto(room_main_menu);
			//with(obj_title_menu_controller)
			{
				//obj_title_menu_controller.pos = 1;
			}
			pressed=false;
		}
		else
		{
			image_alpha = 1;
			room_goto(room_main_games_menu);
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
