var _s = id;

if (!solved && distance_to_object(obj_player) < distanceTrigger &&  keyboard_check_pressed( ord("F"))) {
	leverActive = !leverActive;
	leverPuzzleManager(_s._puzzle_Id, _s._lever_Id, _s.leverActive);	

	if (leverActive) {
		sprite_index = ruinsStatue1On_spr;
	}
	else {
		sprite_index = ruinsStatue1_spr;
	}

}
