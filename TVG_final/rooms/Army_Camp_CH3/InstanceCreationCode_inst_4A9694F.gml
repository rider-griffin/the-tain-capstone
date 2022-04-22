text_id = "The army encounters cuchulainn";

//Play chapter 1-5 theme
if(audio_is_playing(MainMenuTheme))
{
	audio_pause_sound(MainMenuTheme);
}

if(!audio_is_playing(Chapter1_5Theme))
{
	audio_stop_all();
	audio_play_sound(Chapter1_5Theme, 0, true);
}