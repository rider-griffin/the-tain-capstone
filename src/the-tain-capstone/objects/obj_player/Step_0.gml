var up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var attack = keyboard_check(vk_space);

xVelocity = (right - left) * walkSpeed;
yVelocity = (down - up) * walkSpeed;

x += xVelocity;
y += yVelocity;

if(((down - up) == 0) && ((right-left) == 0))
{
	animation_state = 0; //IDLE
}
else
{
	if(down - up < 0)
	{
		animation_state = 1; //UP
		facing = 1;
	}
	else if(down - up > 0)
	{
		animation_state = 3; //DOWN
		facing = 3;
	}
	else if(right - left < 0)
	{
		animation_state = 4; //LEFT
		facing = 4;
	}
	else if(right - left > 0)
	{
		animation_state = 2; //RIGHT
		facing = 2;
	}
}