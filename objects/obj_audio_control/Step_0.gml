var som_que_deve_tocar;

if (room == Menu) {
    som_que_deve_tocar = snd_musica_menu;
} else {
    som_que_deve_tocar = snd_musica_gameplay;
}


if (global.musica_rodando != som_que_deve_tocar) {
    if (audio_is_playing(global.musica_rodando)) audio_stop_sound(global.musica_rodando);
    global.musica_rodando = som_que_deve_tocar;
}


var vol = global.music_muted ? 0 : global.music_volume;
audio_sound_gain(global.musica_rodando, vol, 0);
