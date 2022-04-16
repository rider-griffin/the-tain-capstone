if(PlayerHealth > 0)
{
    if(grounded == 0)
    {
        self.y = self.y + 10;
    }
    if(rage_mode == 0 && RageCD < 1000) RageCD += 1;
    if(rage_mode == 2 && RageCD > 0) RageCD -= 5;
    if(rage_mode == 2 && RageCD <= 0) rage_mode = 3;
    if(rage_mode == 3) self.sprite_index = CuChulainn_RageModeEnd;
    if(rage_mode != 0) 
    {
        instance_create_layer(self.x + random_range(0,64),self.y+64,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+56,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+48,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+40,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+32,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+24,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+16,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+8,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+64,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+56,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+48,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+40,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+32,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+24,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+16,"Instances_1",RageSteamObj);
        instance_create_layer(self.x + random_range(0,64),self.y+8,"Instances_1",RageSteamObj);
    }
	
if(SalmonCD < 1000) SalmonCD += 1;
    if(GaeBolgaCD < 300) GaeBolgaCD += 1;

    if(rage_mode == 0)
    {
        if(salmon_leap == 1) self.sprite_index = Hidden;
        if(salmon_leap == 0 && self.sprite_index == Hidden)
        {
            if(Pdir == 1) self.sprite_index = CuChulainn_WeaponRight;
            if(Pdir == 0) self.sprite_index = CuChulainn_WeaponLeft;
        }

        holdframe = 0;

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
    }
}
else if(self.sprite_index != CuChulainn_Death && self.sprite_index != DeathScreen) self.sprite_index = CuChulainn_Death;

if(self.sprite_index == CuChulainn_Death) instance_deactivate_object(EnemyObj);
