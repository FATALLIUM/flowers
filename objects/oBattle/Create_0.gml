/// @desc
enum states {
	battleEnd,
	playerChoose,
	playerDealDMG,
	enemyAttack,
	enemyEnd, 
}


state = states.playerChoose;


op_border = 8;
op_space = 20;

pos = 0;

option[0, 0] = "ATTACK";
option[0, 1] = "SKILLS";
option[0, 2] = "EAT";
option[0, 3] = "SUMMON";

// add options later
option[1,0] = "Palais Strom";
option[1,1] = "Melancholie";
option[1,2] = "Leer";
option[1,3] = "BACK";

option[2, 0] = "APPLESAUCE";
option[2,1] = "ORANGE";

op_length = 0;

menuLevel = 0;
