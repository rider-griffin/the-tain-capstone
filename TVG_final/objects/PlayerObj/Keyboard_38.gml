/// @description Insert description here
// You can write your code in this editor

if(salmon_leap == 0 && PAHeavy == 0 && PAThrust == 0)
{
	holdsprite = self.image_index;
	self.sprite_index = CuChulainn_WeaponUp;
	self.image_index = holdsprite;
}
if(salmon_leap == 1) self.sprite_index = Hidden;
self.image_speed = 1;