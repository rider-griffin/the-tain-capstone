/// @description Insert description here
// You can write your code in this editor
if(PlayerObj.rage_mode == 0)
{
    if(PlayerObj.AttackValue > 0)
    {
        if(PlayerObj.sprite_index == CuChulainn_HeavyLeft) self.EnemyHealth -= 100;
        if(PlayerObj.sprite_index == CuChulainn_HeavyRight) self.EnemyHealth -= 100; 
        if(PlayerObj.sprite_index == CuChulainn_ThrustRight) self.EnemyHealth -= 5;
        if(PlayerObj.sprite_index == CuChulainn_ThrustLeft) self.EnemyHealth -= 5;
        PlayerObj.AttackValue -= 1;
    }
    else PlayerObj.PlayerHealth = PlayerObj.PlayerHealth - 0.5;
}
if(PlayerObj.sprite_index == CuChulainn_RageMode || PlayerObj.sprite_index == CuChulainn_RageLeft || PlayerObj.sprite_index == CuChulainn_RageRight) self.EnemyHealth = 0;
