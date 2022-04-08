var _self = id;

if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left) && !clicked
{
	clicked = true;
	create_textbox(text_id);
}

if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left) && global.fergus_start_battle_ch7
{
	room_goto(Combat_CH7);
}