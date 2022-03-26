/// @description Insert description here
// You can write your code in this editor

if(salmon_leap == 0)
{
	if(PAThrust == 0)
	{
		instance_create_layer(self.x + 15,self.y + 15,"Instances_1",PlayerAttack_Thrust);
		PAThrust = 1;	
	}
}