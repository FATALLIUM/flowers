
upKey = keyboard_check_pressed(ord ("W"));
downKey = keyboard_check_pressed(ord ("S"));
acceptKey = keyboard_check(ord ("F"));

// store # of options in current menu
op_length = array_length(option[menuLevel]);

// move through menu
pos += downKey-upKey;
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length-1};

// use menu
if acceptKey && !start {
	var _sml = menuLevel;
	
	switch(menuLevel) {
		case 0:
			switch(pos) {
				case 0:
					start = true;
					var seq = layer_sequence_create("Assets_1", x, y, theBeginning);
					layer_sequence_play(seq);
					break;
				case 1: menuLevel = 1; break;
				case 2: game_end(); break;
				}
		break;
		
		case 1:
			game_end();
			break;
		
	}
		
	if _sml != menuLevel {
		pos = 0;
	}
	
// correct option length
	op_length = array_length(option[menuLevel]);

}