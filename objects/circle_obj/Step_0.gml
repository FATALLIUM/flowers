// carrying items

if (global.solved != 2) {
	if (distance_to_object(obj_player) < distanceTrigger) {
		if (keyboard_check_pressed( ord("F"))) {
			if (global.shapes != 3) {
				global.shapes++;
				instance_destroy(circle_obj);
			}
		}
	}
}	