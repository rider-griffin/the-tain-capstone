color1 = c_gray;	//unselected items
color2 = c_white;	//selected items
vS = 35;		//vertical space

//pause menu
option[0, 0] = "Start Game";
option[0, 1] = "Settings";
option[0, 2] = "Quit Game";

//setings menu
option[1, 0] = "Window Size";
option[1, 1] = "Sound";
option[1, 2] = "Controls";
option[1, 3] = "Back";

//start menu 
option[2, 0] = "Mini Games";
option[2, 1] = "Main Story";
option[2, 2] = "Back";

menu_level = 0;
menuitems = array_length(option[menu_level]);
cursor = 0;

//detect if mousec is plugged in
mousec = true;
var gp_num = gamepad_get_device_count();
var i;
for (var i = 0; i < gp_num; i++;) {
	if gamepad_is_connected(i) mousec = false;
}
lastmx = device_mouse_x_to_gui(0);
lastmy = device_mouse_y_to_gui(0);