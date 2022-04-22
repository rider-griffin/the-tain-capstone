global.pause = false;
global.font_main = font_add_sprite(spr_main_font, 32, true, 1);
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

global.key_revert = ord("X");
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_up = vk_up;
global.key_down = vk_down;
global.key_escape = vk_escape;

display_set_gui_size(global.view_width, global.view_height);

enum menu_page2 {
	main,
	settings,
	audio,
	difficulty,
	graphics,
	//controls,
	height
}

/*
enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}
*/

//CREATE MENU PAGES
ds_menu_main = create_menu_page(
	["Resume", menu_element_type.script_runner, resume_game],
	["Settings", menu_element_type.page_transfer, menu_page2.settings],
	["Return to Menu", menu_element_type.script_runner, change_room], //go to main menu
	["Quit Game", menu_element_type.script_runner, exit_game] //quit
);

ds_settings = create_menu_page(
	["Audio", menu_element_type.page_transfer, menu_page2.audio],
	["Difficulty", menu_element_type.page_transfer, menu_page2.difficulty],
	["Graphics", menu_element_type.page_transfer, menu_page2.graphics],
	//["Controls", menu_element_type.page_transfer, menu_page2.controls],
	["Back", menu_element_type.page_transfer, menu_page2.main]
);

ds_menu_audio = create_menu_page(
	["Master", menu_element_type.slider, change_volume, 1, [0,1]],
	["Sounds", menu_element_type.slider, change_volume, 1, [0,1]],
	["Music", menu_element_type.slider, change_volume, 1, [0,1]],
	["Back", menu_element_type.page_transfer, menu_page2.settings]
);

ds_menu_difficulty = create_menu_page(
	["Enemies", menu_element_type.shift, change_difficulty, 0, ["Easy", "Medium", "Hard"]],
	["Player", menu_element_type.shift, change_difficulty, 0, ["Easy", "Medium", "Hard"]],
	["Back", menu_element_type.page_transfer, menu_page2.settings]
);

ds_menu_graphics = create_menu_page(
	["Resolution", menu_element_type.shift, change_resolution, 0, ["384 x 216", "768 x 432", "1152 x 648", "1536 x 874", "1920 x 1080"]],
	["Window Mode", menu_element_type.toggle, change_window_mode, 1, ["FullScreen", "Windowed"]],
	["Back", menu_element_type.page_transfer, menu_page2.settings]
);

/*
ds_menu_controls = create_menu_page(
	["UP", menu_element_type.input, "key_up", vk_up],
	["LEFT", menu_element_type.input, "key_left", vk_left],
	["RIGHT", menu_element_type.input, "key_right", vk_right],
	["DOWN", menu_element_type.input, "key_down", vk_down],
	["Back", menu_element_type.page_transfer, menu_page2.settings]
);
*/

page = 0;
menu_pages[0] = ds_menu_main; 
menu_pages[1] = ds_settings;
menu_pages[2] = ds_menu_audio;
menu_pages[3] = ds_menu_difficulty;
menu_pages[4] = ds_menu_graphics;
//menu_pages[5] = ds_menu_controls;

var i = 0, array_len = array_length_1d(menu_pages);
repeat(array_len)
{
	menu_option[i] = 0;
	i++;
}

inputting = false;
paused = false;

audio_group_load(audiogroup_music);
audio_group_load(audiogroup_soundeffects);
