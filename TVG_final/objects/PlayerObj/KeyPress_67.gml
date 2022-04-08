/// @description Insert description here
// You can write your code in this editor

if(SalmonCD >= 1000)
{
	if(salmon_leap == 0 && PAHeavy == 0 && PAThrust == 0)
	{
		instance_create_layer(self.x-32,self.y-64,"Instances_1",SalmonLeapObj);
		self.sprite_index = Hidden;	
		salmon_leap = 1;
		SalmonCD = 0;
	}
}