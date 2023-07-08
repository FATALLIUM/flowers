// carrying items

if (itemCarried != noone) {
	if (keyboard_check_pressed( ord("F"))) {
	   x = obj_player.x + 15;
	   y = obj_player.y - 20;
	   itemCarried = noone;
	}
	else {
		x = obj_player.x - 15;
		y = obj_player.y - (obj_player.sprite_height + 25);
	}
} else if (distance_to_object(obj_player) < distanceTrigger) {
	if (keyboard_check_pressed( ord("F"))) {
		itemCarried = obj_puzzleItem;
	}
}
