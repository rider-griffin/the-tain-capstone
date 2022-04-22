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
		if(image_index == 0)
		{
			room_goto(PillowTalk_CH1);
		}
		else
		{
			var pass = get_string("Please enter the password","");
			if(pass == "Legacy" && image_index == 1)
			{
				room_goto(Fort_CH2);
			}
			else if(pass == "Poetry" && image_index == 2)
			{
				room_goto(Army_Camp_CH3);
			}
			else if(pass == "Strength" && image_index == 3)
			{
				room_goto(Boy_troop_field_CH4);
			}
			else if(pass == "Bravery" && image_index == 4)
			{
				room_goto(Combat_woods_CH5);
			}
			else if(pass == "Equality" && image_index == 5)
			{
				room_goto(Army_Camp_CH6);
			}
			else if(pass == "Stories" && image_index == 6)
			{
				room_goto(Army_Camp_CH7);
			}
			else if(pass == "Wealth" && image_index == 7)
			{
				room_goto(Combat_CH8);
			}
			else if(pass == "Religion" && image_index == 8)
			{
				room_goto(Combat_CH9);
			}
			else if(pass == "Humor" && image_index == 9)
			{
				room_goto(Army_Camp_CH10);
			}
			else if(pass == "Beauty" && image_index == 10)
			{
				room_goto(Army_Camp_CH11);
			}
			else if(pass == "Loyalty" && image_index == 11)
			{
				room_goto(Cuchulain_Camp_CH12);
			}
			else if(pass == "Kinship" && image_index == 12)
			{
				room_goto(Army_Camp_CH13);
			}
			else if(pass == "Pride" && image_index == 13)
			{
				room_goto(Battle_ground_CH14);
			}
			else
			{
				show_message("Wrong Password!");
			}
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
