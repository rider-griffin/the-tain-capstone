/// @description Insert description here
// You can write your code in this editor
if(PlayerHealth > 0)
{
    if(rage_mode == 0)
    {
        if(GaeBolgaCD >= 300)
        {
            if(salmon_leap == 0 && PAHeavy == 0 && PAThrust == 0)
            {
                instance_create_layer(self.x+16,self.y+8,"Instances_1",GaeBolgaObj);
                GaeBolgaCD = 0;
            }
        }
    }
}
