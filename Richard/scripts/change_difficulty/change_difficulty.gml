// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_difficulty()
{
	//change global variables: health, difficulty, detection radius, etc
	var type = menu_option[page];
	
	//Enemies
	if(type == 0)
	{
		switch(argument0)
		{
			//Easy
			case 0: 
				//example global.enemy_health = 50;
				//example global.enemy_damage = .5;
				break;
			//Medium
			case 1: 
				//example global.enemy_health = 75;
				//example global.enemy_damage = 1;
				break;
			//Hard
			case 2: 
				//example global.enemy_health = 100;
				//example global.enemy_damage = 1.5;
				break;
		}
	}
	//Player
	else
	{
		switch(argument0)
		{
			//Easy
			case 0: 
				break;
			//Medium
			case 1: 
				break;
			//Hard
			case 2: 
				break;
		}
	}
}