/// @description Insert description here
// You can write your code in this editor

if(salmon_leap == 0 && PAHeavy == 0 && PAThrust == 0)
{
	if(Pdir == 1) self.sprite_index = CuChulainn_HeavyRight;
	if(Pdir == 0) self.sprite_index = CuChulainn_HeavyLeft;
	PAHeavy = 1;
	AttackValue = 2;
}