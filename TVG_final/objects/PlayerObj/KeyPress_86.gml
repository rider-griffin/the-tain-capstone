/// @description Insert description here
// You can write your code in this editor
if(GaeBolgaCD >= 300)
{
    if(salmon_leap == 0 && PAHeavy == 0 && PAThrust == 0)
    {
        instance_create_layer(self.x-32,self.y,"Instances_1",GaeBolgaObj);
        GaeBolgaCD = 0;
    }
}
