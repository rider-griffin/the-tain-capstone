/// @description Insert description here
// You can write your code in this editor
if(PlayerObj.Pdir == 1) momentum = 1;
if(PlayerObj.Pdir == 0) 
{
    momentum = 0;
    self.image_xscale = -1;
    self.x += 16;
}
