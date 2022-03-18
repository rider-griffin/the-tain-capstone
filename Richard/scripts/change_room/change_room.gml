// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_room()
{
	var type = menu_option[page];
	
	//Mini Games
	if(type == 0)
	{
		room_goto(room_mini_games_menu); 
	}
	//Main Story
	else if(type == 1)
	{
		room_goto(room_main_games_menu); 
	}
	else
	{
		room_goto(room_main_menu);
	}
}