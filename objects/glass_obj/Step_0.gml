if (distance_to_object(obj_player) < distanceTrigger && keyboard_check_pressed(ord ("F"))) {
	if (!cleansed && global.flowers >= 1) {
		cleansed = true;
		audio_play_sound(click, 1, 0);
		global.flowers--;
	}
}