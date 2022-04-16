/// @description Insert description here
// You can write your code in this editor
if(PlayerHealth > 0)
{
    Pdir = 0;
    if(rage_mode == 0)
    {
        self.x = self.x - 5;
        if(salmon_leap == 0 && PAHeavy == 0 && PAThrust == 0)
        {
            holdsprite = self.image_index;
            self.sprite_index = CuChulainn_WeaponLeft;
            self.image_index = holdsprite;
        }
    }
    if(rage_mode == 2)
    {
        self.x = self.x - 10;
        holdsprite = self.image_index;
        self.sprite_index = CuChulainn_RageLeft;
        self.image_index = holdsprite;
    }
    self.image_speed = 1;
}
