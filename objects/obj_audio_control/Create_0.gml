// Se o volume esta entre 0 e 1
if (!variable_global_exists("music_volume")) global.music_volume = 1;
// Se tá mutado ou não
if (!variable_global_exists("music_muted")) global.music_muted = false;

// Guarda referência da música tocando
global.musica_rodando = noone;
