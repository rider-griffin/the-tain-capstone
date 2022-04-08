if(PlayerObj.AttackValue > 0)
{
    if(PlayerObj.sprite_index == CuChulainn_HeavyLeft) self.EnemyHealth -= 100;
    if(PlayerObj.sprite_index == CuChulainn_HeavyRight) self.EnemyHealth -= 100; 
    if(PlayerObj.sprite_index == CuChulainn_ThrustRight) self.EnemyHealth -= 5;
    if(PlayerObj.sprite_index == CuChulainn_ThrustLeft) self.EnemyHealth -= 5;
    PlayerObj.AttackValue -= 1;
}
else PlayerObj.PlayerHealth = PlayerObj.PlayerHealth - 1;
