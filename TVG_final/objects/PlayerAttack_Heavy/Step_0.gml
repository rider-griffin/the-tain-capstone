/// @description Insert description here
// You can write your code in this editor

self.x = PlayerObj.x + 15;
self.y = PlayerObj.y + 17;
if(PlayerObj.Pdir == 1) self.layer = layer_get_id("Instances_1");
if(PlayerObj.Pdir == 0)
{
	self.layer = layer_get_id("Instances");
    self.x = PlayerObj.x + 45;
	if(self.image_xscale > 0) self.image_xscale *= -1;
}