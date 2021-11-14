var up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var attack = keyboard_check(vk_space);

xVelocity = (right - left) * walkSpeed;
yVelocity = (down - up) * walkSpeed;

//x += xVelocity;
//y += yVelocity;

var predictedX = x + xVelocity;
var predictedY = y + yVelocity;

if(!place_meeting(predictedX, y, obj_collision_box))
{
	x+= xVelocity;
}
else
{
	//deal with X collision
	predictedX = x;
	while(!place_meeting(predictedX, y, obj_collision_box))
	{
		predictedX += sign(xVelocity); //move 1 pixel until collision box
	}
	predictedX -= sign(xVelocity); //move 1 pixel away from collision box
	x = predictedX;
}
if(!place_meeting(x, predictedY, obj_collision_box))
{
	y+= yVelocity;
}
else
{
	//deal with y collision
	predictedY = y;
	while(!place_meeting(x, predictedY, obj_collision_box))
	{
		predictedY += sign(yVelocity); //move 1 pixel until collision box
	}
	predictedY -= sign(yVelocity); //move 1 pixel away from collision box
	y = predictedY;
}


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