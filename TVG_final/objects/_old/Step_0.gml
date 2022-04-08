/// @description Insert description here
// You can write your code in this editor

if(salmon_leap == 1) ReHidden = 1;
if(ReHidden == 1 && salmon_leap == 0)
{
	if(Pdir == 1) self.sprite_index = CuChulainn_WeaponRight;
	if(Pdir == 0) self.sprite_index = CuChulainn_WeaponLeft;
	ReHidden = 0;
}
if(grounded == 0)
{
	self.y = self.y + 10;	
}
if(salmon_leap == 0)
{
	if(Pdir == 1)
	{
		if(PAHeavy == 0 && self.sprite_index == CuChulainn_Right) self.sprite_index = CuChulainn_WeaponRight;
		if(PAHeavy == 1 && self.sprite_index == CuChulainn_WeaponRight) self.sprite_index = CuChulainn_Right;
		if(PAHeavy == 0)
		{
			if(PAThrust == 0 && self.sprite_index == CuChulainn_Right) self.sprite_index = CuChulainn_WeaponRight;
			if(PAThrust == 1 && self.sprite_index == CuChulainn_WeaponRight) self.sprite_index = CuChulainn_Right;
		}
	}
	if(Pdir == 0)
	{
		if(PAHeavy == 0 && self.sprite_index == CuChulainn_Left) self.sprite_index = CuChulainn_WeaponLeft;
		if(PAHeavy == 1 && self.sprite_index == CuChulainn_WeaponLeft) self.sprite_index = CuChulainn_Left;
		if(PAHeavy == 0)
		{
			if(PAThrust == 0 && self.sprite_index == CuChulainn_Left) self.sprite_index = CuChulainn_WeaponLeft;
			if(PAThrust == 1 && self.sprite_index == CuChulainn_WeaponLeft) self.sprite_index = CuChulainn_Left;
		}
	}
}