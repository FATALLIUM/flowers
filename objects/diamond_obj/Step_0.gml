if (distance_to_object(obj_player) < 3 && keyboard_check_pressed(ord ("F"))) {
	instance_destroy(diamond_obj);
	global.diamonds++;
}