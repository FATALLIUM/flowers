if place_meeting(x, y, obj_player) && !instance_exists(obj_warp) {
	var inst = instance_create_depth(0,0, -9999, obj_warp);
	inst.targetX = targetX;
	inst.targetY = targetY;	
	inst.targetRm = targetRm;
	inst.targetFace = targetFace;
}