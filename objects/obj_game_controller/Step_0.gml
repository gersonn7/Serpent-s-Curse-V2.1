if (gameover) {
    global.vel_mult = 0.5;

    if (!tocou_gameover) {
        audio_play_sound(snd_gameOver, 1, false);
        tocou_gameover = true;
	}

} else {
    global.vel_mult = 1;
    tocou_gameover = false;
    
}