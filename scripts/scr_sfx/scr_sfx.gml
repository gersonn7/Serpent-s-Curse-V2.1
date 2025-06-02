function scr_sfx(snd){
	if (!ds_map_exists(sons_tocados, snd)) {
	        audio_play_sound(snd, 1, false);
	        ds_map_add(sons_tocados, snd, true);
	    }
}