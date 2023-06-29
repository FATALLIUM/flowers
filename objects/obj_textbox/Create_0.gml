depth = -1000;

// textbox parameters
textboxWidth = 350;
textboxHeight = 134;
border = 30;
lineSep = 20;
lineWidth = textboxWidth - border*2;
txtSpr[0] = spr_textbox;

// text
page = 0;
pageNum = 0;
text[0] = "";
textLength[0] = string_length(text[0]);
char[0,0] = "";
charX[0,0] = 0;
charY[0,0] = 0;
drawChar = 0;
textSpd = .5;
// options
option[0] = "";
optionLinkId[0] = -1;
optionPos = 0;
optionNum = 0;

setUp = false;


// sounds
soundDelay = 4;
soundCount = soundDelay;



// effects
scr_setDefaultsForText();
lastFreeSpace = 0;
textPauseTimer = 0;
textPauseTime = 16;