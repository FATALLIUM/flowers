if (distance_to_object(obj_player) < 5 && keyboard_check_pressed(ord ("F"))) {
	instance_destroy(meepo_obj);
	global.meeraMeepo++;
}