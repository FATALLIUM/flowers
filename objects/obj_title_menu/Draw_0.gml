// dynamically get w & h menu
var _newWidth = 0;
for (var i = 0; i < op_length; i++) {
		var _opW = string_width(option[menuLevel, i]);
		_newWidth = max(_newWidth, _opW);
	}

width = _newWidth + op_border*2;
height = op_border * 2 + string_height(option[0, 0]) + (op_length-1) * op_space;

// center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;

draw_sprite_ext(sprite_index, image_index, x,y, width/sprite_width, height/sprite_height, 0, c_white, 1);

draw_set_font(FontMenu);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < op_length; i++) {
	var _c = c_white;
	if pos == i {_c = c_yellow;}
	draw_text_color(op_border, op_border + op_space*i, option[menuLevel, i], _c, _c, _c, _c, 1);
}