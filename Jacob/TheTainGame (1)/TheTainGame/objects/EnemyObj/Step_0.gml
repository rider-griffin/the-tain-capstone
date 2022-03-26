/// @description Insert description here
// You can write your code in this editor

if(grounded == 0)
{
	self.y = self.y + 5;	
}
if(detection == 0)
{
	move = irandom_range(1,2)
	if(move == 1) self.x = self.x + 3;
	if(move == 2) self.x = self.x - 3;
	//if(move == 3) self.y = self.y + 3;
	//if(move == 4) self.y = self.y - 3;
}
dist1x = PlayerObj.x - EnemyObj.x;
dist2x = EnemyObj.x - PlayerObj.x;
dist1y = PlayerObj.y - EnemyObj.y;
dist2y = EnemyObj.y - PlayerObj.y;

if(PlayerObj.x > EnemyObj.x)
{
	if(dist1x < 250)
	{
		EnemyObj.x = EnemyObj.x + 3;
		if(PlayerObj.y > EnemyObj.y)
		{
			if(dist1y < 250)
			{
				//EnemyObj.y = EnemyObj.y + 3;
			}
		}
		if(PlayerObj.y < EnemyObj.y)
		{
			if(dist2y < 250)
			{
				//EnemyObj.y = EnemyObj.y - 3;
			}
		}
	}
}
if(PlayerObj.x < EnemyObj.x)
{
	if(dist2x < 250)
	{
		EnemyObj.x = EnemyObj.x - 3;
		if(PlayerObj.y > EnemyObj.y)
		{
			if(dist1y < 250)
			{
				//EnemyObj.y = EnemyObj.y + 3;
			}
		}
		if(PlayerObj.y < EnemyObj.y)
		{
			if(dist2y < 250)
			{
				//EnemyObj.y = EnemyObj.y - 3;
			}
		}
	}
}
//if(dist1x < 250) self.x = self.x + 1;