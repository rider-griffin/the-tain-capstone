/// @description Insert description here
// You can write your code in this editor


if(grounded == 0)
{
	self.y = self.y + 5;	
}
if(detection == 0)
{
	if(move > 0) 
	{
		self.x = self.x + 2;
		move -= 1;
	}
	if(move <= 0) 
	{
		self.x = self.x - 2;
		move -= 1;
	}
	if(move <= -50) move = 50;
}
dist1x = PlayerObj.x - self.x;
dist2x = self.x - PlayerObj.x;

if(PlayerObj.x > self.x)
{
	if(dist1x <= 500)
	{
		self.x += 2;
	}
}
if(PlayerObj.x < self.x)
{
	if(dist2x <= 500)
	{
		self.x -= 2;
	}
}
if(hit == 1)
{
	delay += 1;
	if(delay > 50)
	{
		self.x += 100;
		hit = 0;
	}
}
//if(dist1x < 250) self.x = self.x + 1;