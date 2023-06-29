/// @param _room
/// @param _song
function scr_music(_room, _song) {
	var _currentSong = audio_is_playing(_song);
	switch (_room) {
		case rm_doors1:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_doors2:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_doors3:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_doors4:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_doors5:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_doors6:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_minnieHoused1:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
	
		case rm_minnieHoused2:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_minnieHoused3:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_minnieHoused4:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_minnieHoused5:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_minnieHoused6:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
			
			
		// special rooms
			
		case rm_frozenLake:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_mushroom:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_underwater:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_nightMeadow:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_park:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
			
		case rm_dayMeadow:
			if (_currentSong) {
				audio_stop_sound(_song);
			}
			else {
				audio_play_sound(_song, 1, true);
			}
			break;
	}
	
}