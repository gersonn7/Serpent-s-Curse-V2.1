if (global.musica_atual != "gameplay") {
    if (audio_is_playing(global.musica_rodando)) {
        audio_stop_sound(global.musica_rodando);
    }

    global.musica_rodando = audio_play_sound(snd_musica_gameplay, 1, true);
    global.musica_atual = "gameplay";
}
