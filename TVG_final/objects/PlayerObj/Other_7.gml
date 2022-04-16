/// @description Insert description here
// You can write your code in this editor
if(PAThrust == 1)
{
    PAThrust = 0;
    if(Pdir == 1) PlayerObj.sprite_index = CuChulainn_WeaponRight;
    if(Pdir == 0) PlayerObj.sprite_index = CuChulainn_WeaponLeft;
}
if(PAHeavy == 1) 
{
    PAHeavy = 0;
    if(Pdir == 1) PlayerObj.sprite_index = CuChulainn_WeaponRight;
    if(Pdir == 0) PlayerObj.sprite_index = CuChulainn_WeaponLeft;
}
if(self.sprite_index == CuChulainn_RageMode) 
{
    rage_mode = 2;
    if(Pdir == 1) PlayerObj.sprite_index = CuChulainn_RageRight;
    if(Pdir == 0) PlayerObj.sprite_index = CuChulainn_RageLeft;
}
if(self.sprite_index == CuChulainn_RageModeEnd) 
{
    rage_mode = 0;
    self.sprite_index = CuChulainn_Down;
}
if(self.sprite_index == DeathScreen) room_restart();
if(self.sprite_index == CuChulainn_Death) self.sprite_index = DeathScreen;

self.image_speed = 1;
