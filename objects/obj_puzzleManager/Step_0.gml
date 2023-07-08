room_persistent = true;

// forest lever
if (global.solved == 1) {
	updateBarrier("forestBarrier", true);
}

// tree puzzle
if (global.solved == 2) {
	updateBarrier("forestBarrier1", true);
}

// five lever puzzle
if (global.solved != 4) { // 1 1 0 1 
	if (puzzleLever[0] == true) {
		if (puzzleLever[1] == true) {
			if (puzzleLever[2] == false) {
				if (puzzleLever[3] == true) {
					global.solved++;
					updateLeverSolved("fiveLeverPuzzle", true);
					updateBarrier("futilityBarrier", true);
				}
			}
		}
	}
}

// diamonds
if (global.diamonds == 5) {
	updateBarrier("ruinsBarrier", true);
}

// statue puzzle
if (puzzleListSize == 3 && global.solved != 3) {
	if (puzzleList[0] == "death") {
		if (puzzleList[1] == "order") {
			if (puzzleList[2] == "life") {
				global.solved++;
				updateLeverSolved("statuePuzzle", true);
				updateBarrier("meadowsBarrier", true);
			}
		}
	} else {
		for (var i = 0; i < instance_number(obj_lever); i++) {
			var inst = instance_find(obj_lever, i);
			if (inst._puzzle_Id == "statuePuzzle") {
				inst.leverActive = false;
				if (inst._lever_Id == "death") {
					inst.sprite_index = ruinsStatue1_spr;
				}
				if (inst._lever_Id == "life") {
					inst.sprite_index = meadowsDeerStatue_spr;
				}
				if (inst._lever_Id == "order") {
					inst.sprite_index = cathedralStatue_spr
				}
			}
		}
		puzzleListSize = 0;
		puzzleList[0] = "";
		puzzleList[1] = "";
		puzzleList[2] = "";
	}
}

if (room == meadowsTempleRoom) {
	if (deathGlass_obj.cleansed) {
		if (lifeGlass_obj.cleansed) {
			if (orderGlass_obj.cleansed) {
				var seq = layer_sequence_create("Instances", x, y, theEnd);
					layer_sequence_play(seq);
			}
		}
	}
}