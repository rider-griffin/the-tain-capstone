/// @description Insert description here
// You can write your code in this editor

if(salmon_leap == 0)
{
	if(PAHeavy == 0)
	{
		instance_create_layer(self.x + 15,self.y + 15,"Instances_1",PlayerAttack_Heavy);
		PAHeavy = 1;	
	}
}