
function leverPuzzleManager(_puzzle_Id, _lever_Id, _active) {

	switch (_puzzle_Id) {
		// practice puzzle
		case "puzzleOne":
			if (global.leverPuzzles < 4) {
				switch (_lever_Id) {
					case "one":
						if (_active) {global.leverPuzzles++;}
						else {global.leverPuzzles -= 1;}
						break;
					case "two":
						if (_active) {global.leverPuzzles++;}
						else {global.leverPuzzles -= 1;}
						break;
					case "three":
						if (_active) {global.leverPuzzles++;}
						else {global.leverPuzzles -= 1;}
						break;
					case "four":
						if (_active) {global.leverPuzzles++;}
						else {global.leverPuzzles -= 1;}
						break;
					default:
						break;
				}
			}
			if (!obj_lever.solved && global.leverPuzzles == 4 && global.solved == 0) {
				show_message("1 solved");
				var inst = instance_create_layer(357,127, "Instances", obj_puzzleItem);
					with (inst) {
						sprite_index = test_spr;
					}
				global.leverPuzzles = 0;
				global.solved++;
				obj_lever.solved = true;
				}	
			break;
			
		// statue puzzle practice
		case "statuePuzzle":
			if (global.solved == 0) {
				if (obj_puzzleManager.puzzleListSize != 3) {
					obj_puzzleManager.puzzleList[obj_puzzleManager.puzzleListSize] = _lever_Id;
					obj_puzzleManager.puzzleListSize++;
				}			
			}
			break;
			
		// forest lever
				
		// meera fetch quest
			
		// tree puzzle
		
		// moss fetch quest
		
		// diamond door
		
		// frogs quest
		
		// statue meadows
		
		// riddle
		
		// five-lever puzzle
			
			
			
		default:
			break;
	}
}

