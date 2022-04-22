text_id = "The tain bo cuailnge begins";

if(!audio_is_playing(Chapter1_5Theme))
{
	audio_stop_all();
	audio_play_sound(Chapter1_5Theme, 0, true);
}