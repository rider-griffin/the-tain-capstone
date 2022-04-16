/// @description Insert description here
// You can write your code in this editor
if(PlayerHealth > 0)
{
    if(rage_mode == 0 && RageCD >= 1000)
    {
        rage_mode = 1;
        self.sprite_index = CuChulainn_RageMode;
    }
}
