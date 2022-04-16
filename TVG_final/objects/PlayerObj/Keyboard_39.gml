/// @description Insert description here
// You can write your code in this editor

if(PlayerHealth > 0)
{
    Pdir = 1;
    if(rage_mode == 0)
    {
        self.x = self.x + 5;
        if(salmon_leap == 0 && PAHeavy == 0 && PAThrust == 0)
        {
            holdsprite = self.image_index;
            self.sprite_index = CuChulainn_WeaponRight;
            self.image_index = holdsprite;
        }
    }
    if(rage_mode == 2)
    {
        self.x = self.x + 10;
        holdsprite = self.image_index;
        self.sprite_index = CuChulainn_RageRight;
        self.image_index = holdsprite;
    }
    self.image_speed = 1;
}
