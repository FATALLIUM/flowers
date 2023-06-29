// statue puzzle
if (puzzleListSize == 3 && global.solved == 0) {
	if (puzzleList[0] == "death") {
		if (puzzleList[1] == "order") {
			if (puzzleList[2] == "life") {
				global.solved++;
				show_message("2 solved");
				obj_lever.solved = true;
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