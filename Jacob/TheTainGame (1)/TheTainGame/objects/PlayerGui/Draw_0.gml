/// @description Insert description here
// You can write your code in this editor


//draw_healthbar(PlayerObj.x,PlayerObj.y-48,PlayerObj.x+64,PlayerObj.y-32,PlayerObj.x/10,c_black,c_red,c_green,0,0,0)
draw_set_color(c_white)
draw_set_halign(fa_right)
//draw_text_transformed(100,350,"Power:",2,2,0)
//draw_text_transformed(100,450,1000,2,2,0)
draw_set_halign(fa_left)
//draw_text_transformed(200,350,"Power:",2,2,0)
//draw_text_transformed(200,450,1000,2,2,0)
draw_set_halign(fa_center)
draw_set_color(c_black)
//draw_text_transformed(300,1260,1000,5,5,0)

draw_set_alpha(1)
//draw_healthbar(164,30,292,130,shieldpower,c_black,c_red,c_blue,3,false,false)
draw_set_color(c_green)
//draw_rectangle(310,10,370,130,false)
//raw_rectangle(570,10,690,130,false)
//draw_sprite_stretched(Fergus,0,application_surface.x,0,140,140)
/*draw_sprite_stretched(HUDHP,0,0,0,140,140)
draw_sprite_stretched(HUDSHIELD,0,140,0,140,140)
draw_sprite_stretched(HUDSWORD,0,280,0,140,140)
draw_sprite_stretched(HUDSHOOT,0,420,0,140,140)
draw_sprite_stretched(HUDJUMP,0,560,0,140,140)

/*if(global.tips = true)
{
	draw_set_alpha(1)
	draw_set_color(c_gray)
	draw_rectangle(0,140,700,168,false)
	draw_set_color(c_yellow)
	draw_set_halign(fa_center)
	draw_text(60,145,"HP: "+string(Player.playerhealth))
	draw_text(200,145,"Shield: "+string(Player.shieldpower))
	if(Sword.swing = true){draw_text(340,145,"Sword: ON")}
	if(Sword.swing = false){draw_text(340,145,"Sword: OFF")}
	draw_text(480,145,"Shoots: "+string(bullets))
	if(Player.jump = true){draw_text(620,145,"Jumping: ON")}
	if(Player.jump = false){draw_text(620,145,"Jumping: OFF")}
}
*/