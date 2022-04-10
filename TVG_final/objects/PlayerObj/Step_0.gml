/// @description Insert description here
// You can write your code in this editor

if(salmon_leap == 1) self.sprite_index = Hidden;
if(SalmonCD < 1000) SalmonCD += 1;
if(GaeBolgaCD < 300) GaeBolgaCD += 1;
if(salmon_leap == 0 && self.sprite_index == Hidden)
{
	if(Pdir == 1) self.sprite_index = CuChulainn_WeaponRight;
	if(Pdir == 0) self.sprite_index = CuChulainn_WeaponLeft;
}
holdframe = 0;
if(grounded == 0)
{
	self.y = self.y + 10;	
}

if(PAThrust == 1)
{
	holdframe = self.image_index;
	if(Pdir == 1)
	{
		self.sprite_index = CuChulainn_ThrustRight;
		self.image_index = holdframe;
	}
	if(Pdir == 0)
	{
		self.sprite_index = CuChulainn_ThrustLeft;
		self.image_index = holdframe;
	}
}

if(PAHeavy == 1)
{
	holdframe = self.image_index;
	if(Pdir == 1)
	{
		self.sprite_index = CuChulainn_HeavyRight;
		self.image_index = holdframe;
	}
	if(Pdir == 0)
	{
		self.sprite_index = CuChulainn_HeavyLeft;
		self.image_index = holdframe;
	}
}