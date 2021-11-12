//dynamically get width and height of menu
var _new_w = 0;
for(var i = 0; i < op_length; i++)
{
	var _op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w, _op_w);
}
width = _new_w + op_border*2; //rs
height = op_border*2 + string_height(option[0, 0]) + (op_length-1)*op_space; //ls

//center menu
x = (room_width/2) - op_border/3;
y = (room_height/2) - op_border*3;

//draw the options
draw_set_font(font_rockwell);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
for(var i = 0; i < op_length; i++)
{
	var _c = c_white;
	if(pos == i)
	{
		_c = c_yellow;
	}
	draw_text_color(x+op_border, y+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
}
