function scr_set_defaults_for_text() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	show_debug_message("setting defaults");
	//variables for every letter / character
	for (var c = 0; c < 500; c++) {
		
		col_1[c, page_number] = c_white;
		col_2[c, page_number] = c_white;
		col_3[c, page_number] = c_white;
		col_4[c, page_number] = c_white;
		
		float_text[c, page_number] = 0;
		float_dir[c, page_number] = c * 20;
		
		
	}
	
	txtb_spr[page_number] = spr_menu;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = character_boop_medium;
}



//text VFX
/// @param first_char
/// @param last_char
/// @param col1
/// @param col2
/// @param col3
/// @param col4
function scr_text_color(_start, _end, _col1, _col2, _col3, _col4) {
	
	for(var c = _start; c<= _end; c++) {
		col_1[c, page_number - 1] = _col1;
		col_2[c, page_number - 1] = _col2;
		col_3[c, page_number - 1] = _col3;
		col_4[c, page_number - 1] = _col4;
	}
}

/// @param 1st_char
/// @param last_char
function scr_text_float(_start, _end) {
	
	for(var c = _start; c<= _end; c++) {
		float_text[c, page_number - 1] = true;
	}
}

/// @param text
/// @param [character]
/// @param [side]
function scr_text(_text) {

	scr_set_defaults_for_text();
	show_debug_message("defaults set and returned");
	text[page_number] = _text;
	show_debug_message(string(page_number));
	show_debug_message( string(_text) );

	//get character info
	if argument_count > 1 {
		switch(argument[1]) {
		case "Fedelm":
			speaker_sprite[page_number] = Fedelm_spk;
			txtb_spr[page_number] = spr_textbox_red;
			snd[page_number] = character_boop_medium_high;
			break;
		case "Extra":
			speaker_sprite[page_number] = Extra_spk;
			txtb_spr[page_number] = spr_textbox_blue;
			snd[page_number] = character_boop_medium_high;
			break;
		//Medb
		case "Medb":
			speaker_sprite[page_number] = Medb_spk;
			txtb_spr[page_number] = spr_textbox_red;
			snd[page_number] = character_boop_medium_high;
			break;
		case "Medb - confident":
			speaker_sprite[page_number] = Medb_confident_spk;
			txtb_spr[page_number] = spr_textbox_red;
			snd[page_number] = character_boop_medium_high;
			break;
		case "Medb - angry":
			speaker_sprite[page_number] = Medb_angry_spk;
			txtb_spr[page_number] = spr_textbox_red;
			snd[page_number] = character_boop_medium_high;
			break;
			
		//Ailil
		case "Ailill":
			speaker_sprite[page_number] = Placeholder_spk;
			txtb_spr[page_number] = spr_textbox_green;
			snd[page_number] = character_boop_low;
			break;
		case "Ailill - confident":
			speaker_sprite[page_number] =Placeholder_spk;
			txtb_spr[page_number] = spr_textbox_green;
			snd[page_number] = character_boop_low;
			break;
		case "Ailill - angry":
			speaker_sprite[page_number] = Placeholder_spk;
			txtb_spr[page_number] = spr_textbox_green;
			snd[page_number] = character_boop_low;
			break;
			
		//Etarcomol
		case "Etarcomol":
			speaker_sprite[page_number] = Placeholder_spk;
			txtb_spr[page_number] = spr_textbox_green;
			snd[page_number] = character_boop_low;
			break;
		case "Etarcomol - confident":
			speaker_sprite[page_number] =Placeholder_spk;
			txtb_spr[page_number] = spr_textbox_green;
			snd[page_number] = character_boop_low;
			break;
		case "Etarcomol - angry":
			speaker_sprite[page_number] = Placeholder_spk;
			txtb_spr[page_number] = spr_textbox_green;
			snd[page_number] = character_boop_low;
			break;
			
		//Cuchulainn
		case "Cuchulainn":
			speaker_sprite[page_number] = Placeholder_spk;
			txtb_spr[page_number] = spr_textbox_green;
			snd[page_number] = character_boop_low;
			break;
		case "Cuchulainn - confident":
			speaker_sprite[page_number] =Placeholder_spk;
			txtb_spr[page_number] = spr_textbox_green;
			snd[page_number] = character_boop_low;
			break;
		case "Cuchulainn - angry":
			speaker_sprite[page_number] = Placeholder_spk;
			txtb_spr[page_number] = spr_textbox_green;
			snd[page_number] = character_boop_low;
			break;
			
		//Fergus
		case "Fergus":
			speaker_sprite[page_number] = Fergus_spk;
			txtb_spr[page_number] = spr_textbox_blue;
			snd[page_number] = character_boop_low;
			break;
		case "Fergus - angry":
			speaker_sprite[page_number] = Fergus_angry_spk;
			txtb_spr[page_number] = spr_textbox_blue;
			snd[page_number] = character_boop_low;
			break;
		}
		
	}
	
	//character side
	if argument_count > 2 {
		speaker_side[page_number] = argument[2];
	}

	
	page_number++;
	show_debug_message("Page number after increment: " + string(page_number));
}


/// @param option
/// @param link_id
function scr_option(_option, _link_id) {
	
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
	show_debug_message("inside scr_option");
	
}

/// @param text_id
function create_textbox(_text_id) {
	
	with(instance_create_depth(0,0,-9999,obj_textbox))
	{
		scr_game_text(_text_id);
	}
	
}
