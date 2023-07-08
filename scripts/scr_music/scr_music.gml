/// @param _room
/// @param _song
function scr_music() {
	audio_pause_all();
	switch (room) {
		//	FOREST
		case forestBeginning:
			var song = pile_of_memories1_snd
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case forestCave:
			var song = pile_of_memories1_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case forestRuinEntrance:
			var song = Man_humming;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case forestSecond:
			var song = pile_of_memories1_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case forestSolace:
			var song = daisies_snd
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case forestThird:
			var song = pile_of_memories1_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
		
		// RUINS
		case ruinsArmory:
			var song = I_Have_This_Flower_And_I_Want_To_Eat_It_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
	
		case ruinsBeginning:
			var song = I_Have_This_Flower_And_I_Want_To_Eat_It_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case ruinsCathedralEntrance:
			var song = green_fields_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case ruinsMaze:
			var song = stardusted_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case ruinsSecond:
			var song = I_Have_This_Flower_And_I_Want_To_Eat_It_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case ruinsSolaceTwo:
			break;

		case ruinsSolace:
			var song = stardusted_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case ruinsThird:
			var song = I_Have_This_Flower_And_I_Want_To_Eat_It_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
		
		// CATHEDRAL
		case cathedralArchivesRoom:
			var song = lonely_night_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case cathedralArchivesContRoom:
			var song = my_lost_star;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case cathedralBeginning:
			var song = hall_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case cathedralHiddenRoom:
			var song = ketchup_In_Waiting_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case cathedralInscriptionRoom:
			var song = lonely_night_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case cathedralMeadowsEntrance:
			var song = pile_of_memories_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case cathedralSecond:
			var song = hall_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
		
		case cathedralSolace:
			var song = lullaby_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case cathedralThird:
			var song = Waiting_For_You_To_Pick_Up_The_Phone;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		// MEADOWS	
		case meadowsBeginning:
			var song = waking_melody_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
		
		case meadowsFourth:
			var song = wilting_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case meadowsFutilityRoom:
			var song = waking_melody_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case meadowsSecond:
			var song = waking_melody_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
		
		case meadowsSolace:
			var song = flowering_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case meadowsSolaceTwo:
			var song = spring_time_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case meadowsTempleHall:
			var song = dew;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case meadowsTempleRoom:
			var song = dew;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
			
		case meadowsThird:
			var song = spring_time_snd;
			if (audio_is_paused(song)) {
				audio_resume_sound(song);
			}
			else {
				audio_play_sound(song, 1, true);
			}
			break;
		
		default:
			break;
	}
}