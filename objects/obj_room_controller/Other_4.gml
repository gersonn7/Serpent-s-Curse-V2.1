if (global.musica_atual != "menu") {
    if (audio_is_playing(global.musica_rodando)) {
        audio_stop_sound(global.musica_rodando);
    }

    
}
