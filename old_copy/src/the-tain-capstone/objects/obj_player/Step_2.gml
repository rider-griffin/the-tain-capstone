switch(animation_state)
{
	case 0: //IDLE
		image_index = 0;
		image_speed = 0;
		break;
	case 1: //UP
		sprite_index = spr_cu_chulainn_up;
		image_speed = animation_speed;
		break;
	case 2: //RIGHT
		sprite_index = spr_cu_chulainn_right;
		image_speed = animation_speed;
		break;
	case 3: //DOWN
		sprite_index = spr_cu_chulainn_down;
		image_speed = animation_speed;
		break;
	case 4: //LEFT
		sprite_index = spr_cu_chulainn_left;
		image_speed = animation_speed;
		break;
}