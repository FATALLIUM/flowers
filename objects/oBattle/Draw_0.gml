// dynamically get w & h menu
var _newWidth = 0;
for (var i = 0; i < op_length; i++) {
		var _opW = string_width(option[menuLevel, i]);
		_newWidth = max(_newWidth, _opW);
	}

width = _newWidth + op_border*2;
height = op_border*2 + string_height(option[0, 0]) + (op_length-1)* op_space;


draw_sprite_ext(sprite_index, image_index, 0,y, 6, 2, 0, c_white, 1);

draw_set_font(global.fontMain);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < op_length; i++) {
	var _c = c_white;
	if pos == i {_c = c_yellow;}
	draw_text_color(4, y + op_space*i, option[menuLevel, i], _c, _c, _c, _c, 1);
}