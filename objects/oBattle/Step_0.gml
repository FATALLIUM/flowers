upKey = keyboard_check_pressed(vk_up);
downKey = keyboard_check_pressed(vk_down);
acceptKey = keyboard_check_pressed(vk_space);

// store # of options in current menu
op_length = array_length(option[menuLevel]);

// move through menu
pos += downKey-upKey;
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length-1};

// use menu
if acceptKey {
	var _sml = menuLevel;
	
	switch(menuLevel) {
		case 0:
			switch(pos) {
				case 0: 
					oEnemy.hp -= obj_player.myAttack;
					with oBattle {
						state = states.playerDealDMG;
						alarm[1] = 60;
					}
					break;
				}
		break;
		
		case 1:
			switch(pos) {
				case 0: 
					break;
				case 1:
					break;
				case 2: 
					break;
				case 3: 
					menuLevel = 0;
					break;
			}
			break;
		
	}
		
	if _sml != menuLevel {
		pos = 0;
	}
	
// correct option length
	op_length = array_length(option[menuLevel]);

}