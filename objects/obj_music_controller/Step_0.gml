if (audio_is_playing(global.musica_rodando)) {
    var volume = global.som_mutado ? 0 : global.music_volume;
    audio_sound_gain(global.musica_rodando, volume, 0.1);
}
