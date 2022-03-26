// GAMEPAD, KEYBOARD CONTROLS											

// Press Direction (thumbstick, dpad, keyboard arrows, keyboard WASD)
pright = gamepad_button_check_pressed(0,gp_padr)								 		|| keyboard_check_pressed(vk_right)
|| keyboard_check_pressed(ord("D"))
|| ((gamepad_axis_value(0,gp_axislh) > 0.5) && !alarm[0]);

pleft = gamepad_button_check_pressed(0,gp_padl)	
|| keyboard_check_pressed(vk_left)
|| keyboard_check_pressed(ord("A"))
|| ((gamepad_axis_value(0,gp_axislh) < -0.5) && !alarm[0]);

pup = gamepad_button_check_pressed(0,gp_padu)				|| keyboard_check_pressed(vk_up)
|| keyboard_check_pressed(ord("W"))
|| ((gamepad_axis_value(0,gp_axislv) < -0.5) && !alarm[0]);

pdown = gamepad_button_check_pressed(0,gp_padd)				|| keyboard_check_pressed(vk_down)
|| keyboard_check_pressed(ord("S"))
|| ((gamepad_axis_value(0,gp_axislv) > 0.5) && !alarm[0]);
		
// Lockout for Thumbstick Press
if ( (gamepad_axis_value(0,gp_axislh) > 0.5)
|| (gamepad_axis_value(0,gp_axislh) < -0.5)
|| (gamepad_axis_value(0,gp_axislv) < -0.5)
|| (gamepad_axis_value(0,gp_axislv) > 0.5) ) {alarm[0] = 5;}

//Action:
action = gamepad_button_check_pressed(0,gp_face3)			|| keyboard_check_pressed(vk_enter)
|| gamepad_button_check_pressed(0,gp_face1)
|| keyboard_check_pressed(vk_space)
|| mouse_check_button_released(mb_left)
|| gamepad_button_check_pressed(0,gp_start);
 
//Cancel:
cancel = gamepad_button_check_pressed(0,gp_face2)
|| keyboard_check_pressed(vk_backspace)
|| keyboard_check_pressed(vk_escape);

//check if the user is using the mouse
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
if (mx != lastmx || my != lastmy) mousec = true;
lastmx = mx;
lastmy = my;

//if using keyboard then disable the mouse, so there is no confusion
if keyboard_check_pressed(vk_anykey) mousec = false;

//if using gamepad then disable the mouse, so there is no confusion
for (i=gp_face1; i<gp_axisrv; i++){
    if gamepad_button_check(0, i) {
        mousec = false;
    }
}

//draw the menu
var ax = room_width/2;	//x loc on the GUI to anchor the menu from top left
var ay = room_height/1.75;	//y loc on the GUI to anchor the menu from top left
var txt;
var col;
var i;
draw_set_font(font_rockwell);   //add your own custom font
draw_set_valign(fa_middle);
draw_set_halign(fa_middle);
draw_set_alpha(1);

var xx = ax;
var yy = ay;

//find the widest menu item so we know where to create boundaries
var wide = 0;
for (var i = 0; i < menuitems; i++) {
	var w = string_width(option[menu_level, i]);  //find the widest string
	if w > wide wide = w;
}
var ls = (xx - 30);
var rs = (xx + wide);
		
/// DRAW MENU
for (var i = 0; i < menuitems; i++) {
			
	//highlight on mouse over
	if point_in_rectangle(mx,my,ls,yy-vS/3,rs,yy+vS/3) && mousec {
		//if cursor != i audio_play_sound(snd_switch,1,false);
		cursor = i;
	}
	col = color1;
	txt = option[menu_level, i];
	if cursor == i col = color2;
	draw_text_transformed_color(xx,yy,txt,1,1,0,col,col,col,col,1);
	yy += vS;
}

//highlight with mousec/ keyboard
if pup {
	cursor -= 1;
	if cursor < 0 cursor = menuitems-1;
}
if pdown {
	cursor += 1;
	if cursor > menuitems-1 cursor = 0;
}
		
//activate
if action {
	var _sml = menu_level;
	switch(menu_level)
	{
		//pause menu
		case 0:
			switch(cursor)
			{
				//start game
				case 0: menu_level = 2; break;
				//settings
				case 1: menu_level = 1; break;
				//quit game
				case 2: game_end(); break;
			}
			break;
		//settings menu
		case 1:
			switch(cursor)
			{
				//window size
				case 0: menu_level = 0; break;
				//brightness
				case 1: menu_level = 0; break;
				//controls
				case 2: menu_level = 0; break;
				//back 
				case 3: menu_level = 0; break;
			}
			break;
		//Start Game Menu
		case 2:
			switch(cursor)
			{
				//Mini Games
				case 0: room_goto(room_mini_games_menu); break;
				//Main Levels
				case 1: room_goto(room_main_games_menu); break;
				//back 
				case 2: menu_level = 0; break;
			}
			break;
	}
	//set position back
	if(_sml != menu_level)
	{
		cursor = 0;	
	}
	menuitems = array_length(option[menu_level]);
}

//sound effects - Add your own custom Sound Effects Here
//if action audio_play_sound(snd_select,1,false);
//if pup || pdown audio_play_sound(snd_switch,1,false);
