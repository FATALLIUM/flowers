if (distance_to_object(obj_player) < 5 && keyboard_check_pressed(ord ("F"))) {
	if (global.shapes == 3 && global.solved != 2) {
		global.solved++;
		sprite_index = treeDullPuzzleSolved_spr;
	}
}