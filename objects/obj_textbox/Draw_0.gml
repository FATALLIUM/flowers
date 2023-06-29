acceptKey = keyboard_check_pressed(vk_space);

textboxX = camera_get_view_x(view_camera[0]);
textboxY = camera_get_view_y(view_camera[0]) + 164; 

// setup !!!!!!!!!!!!!!!!!!!!!!!!!!!!
if setUp == false 
	{
	setUp = true;
	draw_set_font(global.fontMain);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	 
	
	for (var p = 0; p < pageNum; p++) {
		// find how many characters are on each page & store that num in textLength array
		textLength[p] = string_length(text[p]); 
		// get x pos for textbox
			// char on left
			textXOffset[p] = 105;
			portraitXOffset[p] = 44;
			//char on right
			if speakerSide[p] == -1 {
				textXOffset[p] = 108;
				portraitXOffset[p] = 206;
			}
		
			// no char / center textbox on screen
			if speakerSprite[p] == noone {
				textXOffset[p] = 140;	
			}
			
		// setting individual characters & finding where to break lines
		 for (var c = 0; c < textLength[p]; c++) {
				var _charPos = c + 1;
				
				// store individual char in the "char" array
				char[c,p] = string_char_at(text[p], _charPos);
				
				// get current width of line
				var _textUpToChar = string_copy(text[p],1,_charPos);
				var _currentTextW = string_width(_textUpToChar) - string_width(char[c,p]);
				
				// get last free space
				if char[c,p] == " " {lastFreeSpace = _charPos + 1};
				
				// get line breaks
				if _currentTextW - lineBreakOffset[p] > lineWidth {
					lineBreakPos[lineBreakNum[p], p] = lastFreeSpace;
					lineBreakNum[p]++;
					var _textUpToLastSpace = string_copy(text[p], 1, lastFreeSpace);
					var _lastFreeSpaceString = string_char_at(text[p], lastFreeSpace);
					lineBreakOffset[p] = string_width(_textUpToLastSpace) - string_width(_lastFreeSpaceString);
				}
			}
			
			
			// getting each character's coords
			 for (var c = 0; c < textLength[p]; c++) {
				var _charPos = c+1;
				var _textX = textboxX + textXOffset[p] -24;
				var _textY = textboxY;
				// get current width of line
				var _textUpToChar = string_copy(text[p],1,_charPos);
				var _currentTextW = string_width(_textUpToChar) - string_width(char[c,p]);
				var _textLine = 0;
				
				// compensate for string breaks
				for (var lb = 0; lb < lineBreakNum[p]; lb++) {
					if _charPos >= lineBreakPos[lb,p] {
						var _strCopy = string_copy(text[p], lineBreakPos[lb,p], _charPos-lineBreakPos[lb,p]);
						_currentTextW = string_width(_strCopy);
					
						// record the line this char should be on
						_textLine = lb+1; // +1 since lb starts at 0;
					}
				}
				
				// add to x and y coords based on new info
				charX[c,p] = _textX + _currentTextW;
				charY[c,p] = _textY + _textLine * lineSep;
			}
		}
	}
	
	
// typing text
if textPauseTimer <= 0 {

	if drawChar < textLength[page] {
		drawChar += textSpd;
		drawChar = clamp(drawChar, 0, textLength[page]);
		var _checkChar = string_char_at(text[page], drawChar);
		if _checkChar == "." || _checkChar == "," || _checkChar == "..." {
			textPauseTimer = textPauseTime;
			/*if (!audio_is_playing(snd[pageNum])) {
			audio_play_sound(snd[pageNum], 8, false);
			} */
		}
		else {
			// typing sound
			if soundCount < soundDelay {
				soundCount++;
				} else {
					soundCount = 0;
					// audio_play_sound(snd[pageNum], 8, false);
					}
			}
		}
	}
	else {
			textPauseTimer--; 
		}
	

// flip thru pages !!!!!!!!!!!!!!!!!!!!!!
if acceptKey {
	
	 // if typing is done
	 if drawChar == textLength[page] { 
		 // next page
		 if page < pageNum -1 {
			page++;
			drawChar = 0;
		 }
	// destroy textbox
	 else {
		 // link text options
		 if optionNum > 0 {
			createTextbox(optionLinkId[optionPos]);
			}
		instance_destroy();
		}
		 
	}
	// if not done typing
	else {
		drawChar = textLength[page];
	}
	
	
}
	
	
// draw textbox !!!!!!!!!!!!!!!!!!!!!!!!!
var _textboxX = textboxX + textXOffset[page];
var _textboxY = textboxY;
txtSprW = sprite_get_width(txtSpr[page]);
txtSprH = sprite_get_height(txtSpr[page]);

// draw back of textbox
draw_sprite_ext(txtSpr[page], 0, _textboxX, _textboxY, textboxWidth/txtSprW, textboxHeight/txtSprH, 0, c_white, 1);

// draw speaker
if speakerSprite[page] != noone {
	sprite_index = speakerSprite[page];
	if drawChar == textLength[page] {image_index = 0};
	var _speakerX = textboxX + portraitXOffset[page];
	if speakerSide[page] == -1 {_speakerX += sprite_width};
	// draw speaker
	// 	draw_sprite_ext(txtSpr[page], spr_textbox, textboxX, textboxY, 2.105, 2.1899991, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, _speakerX, textboxY, speakerSide[page], 1, 0, c_white, 1);
}

// options /////////////////////////////////
if drawChar == textLength[page] && page == pageNum -1 {
	// option selection
	optionPos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	optionPos = clamp(optionPos, 0, optionNum - 1);
	// options box
	var	_opSpace = 20;
	var _opBorder = 10;
	for (var op = 0; op < optionNum; op++) {
			// option box
			// draw arrow
			if optionPos == op {
				draw_sprite(spr_textbox_arrow, 0, _textboxX-100, _textboxY - _opSpace*optionNum - _opSpace*op - 10);
			}
		draw_sprite(spr_options,0, _textboxX, _textboxY - _opSpace*optionNum - _opSpace*op-11);
		// option text
		draw_text(_textboxX - _opBorder-25, _textboxY - _opSpace*optionNum - _opSpace*op - 10, option[op]);
		}
	}
	

// draw text
for ( var c = 0; c < drawChar; c++) { 
	// draw chars
	draw_text_color(charX[c, page]-60, charY[c,page]-10, char[c, page], color1[c,page],color2[c,page],color3[c,page],color4[c,page],1);
	}	