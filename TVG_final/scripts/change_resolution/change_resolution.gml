// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_resolution()
{
	//["384 x 216", "768 x 432", "1152 x 648", "1536 x 874", "1920 x 1080"]
	switch(argument0)
		{
			//384 x 216
			case 0: window_set_size(384,216); break;
			//768 x 432
			case 1: window_set_size(768,432); break;
			//1152 x 648
			case 2: window_set_size(1152,648); break;
			//1536 x 874
			case 3: window_set_size(1536,874); break;
			//1920 x 1080
			case 4: window_set_size(1920,1080); break;
		}
}