PlayerObj.salmon_leap = 0;
instance_create_layer(PlayerObj.x+16,PlayerObj.y+16,"Instances_1",SalmonSplashObj);
instance_create_layer(PlayerObj.x+48,PlayerObj.y+16,"Instances_1",SalmonSplashObj);
instance_destroy();
