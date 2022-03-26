/// @description Insert description here
// You can write your code in this editor

Pdir = 0;
if(salmon_leap == 0)
{
	self.x = self.x - 5;
	if(PAHeavy == 0 && PAThrust == 0) 
	{
		holdsprite = self.image_index;
		self.sprite_index = CuChulainn_WeaponLeft;
		self.image_index = holdsprite;
	}
	else 
	{
		holdsprite = self.image_index;
		self.sprite_index = CuChulainn_Left;
		self.image_index = holdsprite;
	}
	self.image_speed = 1;
}