var _s = id;

if (distance_to_object(obj_player) < distanceTrigger && keyboard_check_pressed( ord("F") ) && !instance_exists(obj_textbox)) {
	createTextbox(_s._text_Id, _s.x, _s.y);
	instance_destroy(_s);
}
