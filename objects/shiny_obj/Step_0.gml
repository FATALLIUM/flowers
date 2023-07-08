if (distance_to_object(obj_player) < 4) {
	if (keyboard_check_pressed( ord("F"))) {
		global.frogsInstruments++;
		instance_destroy(shiny_obj);
	}
}