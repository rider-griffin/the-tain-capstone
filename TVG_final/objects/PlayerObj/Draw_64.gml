/// @description Insert description here
// You can write your code in this editor

if(PlayerHealth > 0)
{
    draw_set_color(c_green);
    draw_healthbar(0,0,128,126,SalmonCD/10,c_black,c_red,c_blue,0,0,0);
    draw_sprite(LeapCDSpr,0,0,0);
    draw_healthbar(128,0,256,126,GaeBolgaCD/3,c_black,c_red,c_blue,0,0,0);
    draw_sprite(GBCDSpr,0,128,0);
    draw_healthbar(256,0,384,126,RageCD/10,c_black,c_red,c_blue,0,0,0);
    draw_sprite(RageCDSpr,0,256,0);
    draw_set_color(c_black);
    if(tooltips == 1)
    {
        draw_text(390, 10,"Ability Commands:");
		draw_text(390, 20,"-----------------");
        draw_text(390, 30,"B - Rage Mode");
        draw_text(390, 50,"C - Heavy Attack");
        draw_text(390, 70,"Z - Thrust Attack");
        draw_text(390, 90,"V - Gae Bolga/Spear Throw");
        draw_text(390, 110,"C - Salmon Leap");
        draw_text(0, 130,"Salmon Leap");
        draw_text(128, 130,"Gae Bolga");
        draw_text(256, 130,"Rage Mode");
    }
    if(tooltips == 0)
    {
        draw_text(390, 10,"Press T to see Tooltips");
    }
}
