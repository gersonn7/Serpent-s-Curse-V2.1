
if (!variable_global_exists("music_volume")) {
    global.music_volume = 1; 
}


var musica_desejada = noone;
var nome_room = room_get_name(room);


if (nome_room == "Menu" || nome_room == "Submenu" || nome_room == "Volume") {
    musica_desejada = snd_musica_menu;
} else if (nome_room == "Room1") {
    musica_desejada = snd_musica_gameplay;
}


if (musica_desejada != noone && global.musica_atual != musica_desejada) {
    if (audio_is_playing(global.musica_rodando)) {
        audio_stop_sound(global.musica_rodando);
    }

    global.musica_rodando = audio_play_sound(musica_desejada, 1, true);
    audio_sound_gain(global.musica_rodando, global.music_volume, 0); 
    global.musica_atual = musica_desejada;
}
