/// @description Insert description here
// You can write your code in this editor

if(PAThrust == 1)
{
	PAThrust = 0;
	if(Pdir == 1) PlayerObj.sprite_index = CuChulainn_WeaponRight;
	if(Pdir == 0) PlayerObj.sprite_index = CuChulainn_WeaponLeft;
}
if(PAHeavy == 1) 
{
	PAHeavy = 0;
	if(Pdir == 1) PlayerObj.sprite_index = CuChulainn_WeaponRight;
	if(Pdir == 0) PlayerObj.sprite_index = CuChulainn_WeaponLeft;
}
