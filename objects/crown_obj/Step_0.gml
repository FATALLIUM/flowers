if (distance_to_object(obj_player) < 4) {
	if (keyboard_check_pressed( ord("F"))) {
		global.regalCrown++;
		instance_destroy(crown_obj);
	}
}