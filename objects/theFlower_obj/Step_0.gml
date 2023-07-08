if (distance_to_object(obj_player) < 4 &&  keyboard_check_pressed( ord("F"))) {
	instance_destroy(self);
	global.flowers++;
	audio_play_sound(click, 7, 0);
}