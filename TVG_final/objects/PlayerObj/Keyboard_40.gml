/// @description Insert description here
// You can write your code in this editor

if(salmon_leap == 0 && PAHeavy == 0 && PAThrust == 0)
{
	holdsprite = self.image_index;
	self.sprite_index = CuChulainn_WeaponDown;
	self.image_index = holdsprite;
}
self.image_speed = 1;