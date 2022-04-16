/// @description Insert description here
// You can write your code in this editor

if(salmon_leap == 1) self.sprite_index = Hidden;
if(salmon_leap == 0 && PAHeavy == 0 && PAThrust == 0) self.image_speed = 0;
else self.image_speed = 1;

if(rage_mode == 1 || rage_mode == 3) self.image_speed = 1;
if(self.sprite_index == CuChulainn_Death || self.sprite_index == DeathScreen) self.image_speed = 1;
