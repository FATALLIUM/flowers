
function leverPuzzleManager(_puzzle_Id, _lever_Id, _active) {
	switch (_puzzle_Id) {
		// statue puzzle practice
		case "statuePuzzle":
			if (global.solved == 2) {
				if (obj_puzzleManager.puzzleListSize != 3) {
					obj_puzzleManager.puzzleList[obj_puzzleManager.puzzleListSize] = _lever_Id;
					obj_puzzleManager.puzzleListSize++;
				}			
			}
			break;
			
		// forest lever
		case "firstForestPuzzle":
			if (global.solved != 1 && _lever_Id == "forestLever" && _active) {
				global.solved++;
				updateLeverSolved(_puzzle_Id, true);
			}
			break;
			
		// five lever puzzle
		case "fiveLeverPuzzle":
			if (global.solved != 4) {
			switch (_lever_Id) {
				case "lv1":
					obj_puzzleManager.puzzleLever[0] = _active;
					break;
				case "lv2":
					obj_puzzleManager.puzzleLever[1] = _active;
					break;
				case "lv3":
					obj_puzzleManager.puzzleLever[2] = _active;
					break;
				case "lv4":
					obj_puzzleManager.puzzleLever[3] = _active;
					break;
				default:
					break;
				}
			}
			break;
		default:
			break;
	}
}

// setters
function updateLeverSolved(_puzzle_Id, _solved) {
	for (var i = 0; i < instance_number(obj_lever); i++) {
		var inst = instance_find(obj_lever, i);
		if (inst._puzzle_Id == _puzzle_Id) {
			inst.solved = _solved;
		}
	}
}

function updateBarrier(_barrier_Id, _state) {
	for (var i = 0; i < instance_number(barrier_obj); i++) {
		var inst = instance_find(barrier_obj, i);
		if (inst.barrierName == _barrier_Id) {
			audio_play_sound(achievmentBell_snd, 3, 0);
			inst.cleansed = _state;
		}
	}
}