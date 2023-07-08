/// @param _room
/// @param _song
function scr_music() {
	switch (room) {
		case forestBeginning:
			if (audio_is_playing(pile_of_memories1_snd)) {
				audio_stop_sound(pile_of_memories1_snd);
			}
			else {
				audio_play_sound(pile_of_memories1_snd, 1, true);
			}
			break;
			
		case forestCave:
			if (audio_is_playing(pile_of_memories1_snd)) {
				audio_stop_sound(pile_of_memories1_snd);
			}
			else {
				audio_play_sound(pile_of_memories1_snd, 1, true);
			}
			break;
			
		case forestRuinEntrance:
			if (audio_is_playing(Man_humming)) {
				audio_stop_sound(Man_humming);
			}
			else {
				audio_play_sound(Man_humming, 1, true);
			}
			break;
			
		case forestSecond:
			if (audio_is_playing(pile_of_memories1_snd)) {
				audio_stop_sound(pile_of_memories1_snd);
			}
			else {
				audio_play_sound(pile_of_memories1_snd, 1, true);
			}
			break;
			
		case forestSolace:
			if (audio_is_playing(daisies_snd)) {
				audio_stop_sound(daisies_snd);
			}
			else {
				audio_play_sound(daisies_snd, 1, true);
			}
			break;
			
		case forestThird:
			if (audio_is_playing(pile_of_memories1_snd)) {
				audio_stop_sound(pile_of_memories1_snd);
			}
			else {
				audio_play_sound(pile_of_memories1_snd, 1, true);
			}
			break;
			
		case ruinsArmory:
			if (audio_is_playing(I_Have_This_Flower_And_I_Want_To_Eat_It_snd)) {
				audio_stop_sound(I_Have_This_Flower_And_I_Want_To_Eat_It_snd);
			}
			else {
				audio_play_sound(I_Have_This_Flower_And_I_Want_To_Eat_It_snd, 1, true);
			}
			break;
	
		case ruinsBeginning:
			if (audio_is_playing(I_Have_This_Flower_And_I_Want_To_Eat_It_snd)) {
				audio_stop_sound(I_Have_This_Flower_And_I_Want_To_Eat_It_snd);
			}
			else {
				audio_play_sound(I_Have_This_Flower_And_I_Want_To_Eat_It_snd, 1, true);
			}
			break;
			
		case ruinsCathedralEntrance:
			if (audio_is_playing(green_fields_snd)) {
				audio_stop_sound(green_fields_snd);
			}
			else {
				audio_play_sound(green_fields_snd, 1, true);
			}
			break;
			
		case ruinsMaze:
			if (audio_is_playing(stardusted_snd)) {
				audio_stop_sound(stardusted_snd);
			}
			else {
				audio_play_sound(stardusted_snd, 1, true);
			}
			break;
			
		case ruinsSecond:
			if (audio_is_playing(I_Have_This_Flower_And_I_Want_To_Eat_It_snd)) {
				audio_stop_sound(I_Have_This_Flower_And_I_Want_To_Eat_It_snd);
			}
			else {
				audio_play_sound(I_Have_This_Flower_And_I_Want_To_Eat_It_snd, 1, true);
			}
			break;
			
		case ruinsSolaceTwo:
			break;

		case ruinsSolace:
			if (audio_is_playing(stardusted_snd)) {
				audio_stop_sound(stardusted_snd);
			}
			else {
				audio_play_sound(stardusted_snd, 1, true);
			}
			break;
			
		case ruinsThird:
			if (audio_is_playing(I_Have_This_Flower_And_I_Want_To_Eat_It_snd)) {
				audio_stop_sound(I_Have_This_Flower_And_I_Want_To_Eat_It_snd);
			}
			else {
				audio_play_sound(I_Have_This_Flower_And_I_Want_To_Eat_It_snd, 1, true);
			}
			break;
			
		case cathedralArchivesRoom:
			if (audio_is_playing(lonely_night_snd)) {
				audio_stop_sound(lonely_night_snd);
			}
			else {
				audio_play_sound(lonely_night_snd, 1, true);
			}
			break;
			
		case cathedralArchivesContRoom:
			if (audio_is_playing(lonely_night_snd)) {
				audio_stop_sound(lonely_night_snd);
			}
			else {
				audio_play_sound(lonely_night_snd, 1, true);
			}
			break;
			
		case cathedralBeginning:
			if (audio_is_playing(hall_snd)) {
				audio_stop_sound(hall_snd);
			}
			else {
				audio_play_sound(hall_snd, 1, true);
			}
			break;
			
		case cathedralHiddenRoom:
			if (audio_is_playing(ketchup_In_Waiting_snd)) {
				audio_stop_sound(ketchup_In_Waiting_snd);
			}
			else {
				audio_play_sound(ketchup_In_Waiting_snd, 1, true);
			}
			break;
			
		case cathedralInscriptionRoom:
			if (audio_is_playing(lonely_night_snd)) {
				audio_stop_sound(lonely_night_snd);
			}
			else {
				audio_play_sound(lonely_night_snd, 1, true);
			}
			break;
			
		case cathedralMeadowsEntrance:
			if (audio_is_playing(pile_of_memories_snd)) {
				audio_stop_sound(pile_of_memories_snd);
			}
			else {
				audio_play_sound(pile_of_memories_snd, 1, true);
			}
			break;
			
		case cathedralSecond:
			if (audio_is_playing(hall_snd)) {
				audio_stop_sound(hall_snd);
			}
			else {
				audio_play_sound(hall_snd, 1, true);
			}
			break;
		
		case cathedralSolace:
			if (audio_is_playing(lullaby_snd)) {
				audio_stop_sound(lullaby_snd);
			}
			else {
				audio_play_sound(lullaby_snd, 1, true);
			}
			break;
			
		case cathedralThird:
			if (audio_is_playing(lonely_night_snd)) {
				audio_stop_sound(lonely_night_snd);
			}
			else {
				audio_play_sound(lonely_night_snd, 1, true);
			}
			break;
			
		case meadowsBeginning:
			if (audio_is_playing(waking_melody_snd)) {
				audio_stop_sound(waking_melody_snd);
			}
			else {
				audio_play_sound(waking_melody_snd, 1, true);
			}
			break;
		
		case meadowsFourth:
			if (audio_is_playing(wilting_snd)) {
				audio_stop_sound(wilting_snd);
			}
			else {
				audio_play_sound(wilting_snd, 1, true);
			}
			break;
			
		case meadowsFutilityRoom:
			if (audio_is_playing(waking_melody_snd)) {
				audio_stop_sound(waking_melody_snd);
			}
			else {
				audio_play_sound(waking_melody_snd, 1, true);
			}
			break;
			
		case meadowsSecond:
			if (audio_is_playing(waking_melody_snd)) {
				audio_stop_sound(waking_melody_snd);
			}
			else {
				audio_play_sound(waking_melody_snd, 1, true);
			}
			break;
		
		case meadowsSolace:
			if (audio_is_playing(flowering_snd)) {
				audio_stop_sound(flowering_snd);
			}
			else {
				audio_play_sound(flowering_snd, 1, true);
			}
			break;
			
		case meadowsSolaceTwo:
			if (audio_is_playing(spring_time_snd)) {
				audio_stop_sound(spring_time_snd);
			}
			else {
				audio_play_sound(spring_time_snd, 1, true);
			}
			break;
			
		case meadowsTempleHall:
			if (audio_is_playing(dew)) {
				audio_stop_sound(dew);
			}
			else {
				audio_play_sound(dew, 1, true);
			}
			break;
			
		case meadowsTempleRoom:
			if (audio_is_playing(dew)) {
				audio_stop_sound(dew);
			}
			else {
				audio_play_sound(dew, 1, true);
			}
			break;
			
		case meadowsThird:
			if (audio_is_playing(spring_time_snd)) {
				audio_stop_sound(spring_time_snd);
			}
			else {
				audio_play_sound(spring_time_snd, 1, true);
			}
			break;
	}
}