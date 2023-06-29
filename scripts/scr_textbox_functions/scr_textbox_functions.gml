function scr_setDefaultsForText() {
	lineBreakPos[0, pageNum] = 999;
	lineBreakNum[pageNum] = 0;
	lineBreakOffset[pageNum] = 0;
	
	// variables for every letter/char
	
	for (var c = 0; c < 500; c++) {
		color1[c, pageNum] = c_white;
		color2[c, pageNum] = c_white;
		color3[c, pageNum] = c_white;
		color4[c, pageNum] = c_white;
		
	}
	
	txtSpr[pageNum] = spr_textbox;
	speakerSprite[pageNum] = noone;
	speakerSide[pageNum] = 1;	
//	snd[pageNum] = He;
	
}

///// text vfx ------------
/// @param 1stChar
/// @param lastChar
/// @param color1
/// @param color2
/// @param color3
/// @param color4

function scr_textColor(_start, _end, _color1, _color2, _color3, _color4) {
	for (var c = _start; c < _end; c++) {
		color1[c, pageNum-1] = _color1;
		color2[c, pageNum-1] = _color2;
		color3[c, pageNum-1] = _color3;
		color4[c, pageNum-1] = _color4;
	}
}



/// @param text
/// @param [character]	
/// @param [side]
function scr_text(_text) {
	scr_setDefaultsForText();
	
	text[pageNum] = _text;
	
	// get char info
	if argument_count > 1 {
		switch(argument[1])
			{
			
			// player
			case "player":
				speakerSprite[pageNum] = spr_player_down;
//				snd[pageNum] = L;
				break;
				
			case "datester":
				speakerSprite[pageNum] = datester0_spr;
				break;	
			}
			
			
	}
	pageNum ++;
}





/// @param option
/// @param linkId
function scr_options(_option, _linkId) {
	option[optionNum] = _option;
	optionLinkId[optionNum] = _linkId;
	
	optionNum++;
}




/// @param text_Id
function createTextbox(_text_Id, _x, _y) {
	with instance_create_depth(0,0,-1000, obj_textbox) {
		scr_gameText(_text_Id, _x, _y);
	} 
}