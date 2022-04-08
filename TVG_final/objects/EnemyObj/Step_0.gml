if(EnemyHealth <= 0) self.sprite_index = EnemyDeathSpr;
else
{
    if(EDir == 0) self.sprite_index = EnemyLeftSpr;
    if(EDir == 1) self.sprite_index = EnemyRightSpr;
}
if(grounded == 0)
{
    self.y = self.y + 10;
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
        hit = 1;
    }
}
if(PlayerObj.x < self.x)
{
    if(dist2x <= 500)
    {
        self.x -= 2;
        hit = 1;
    }
}

