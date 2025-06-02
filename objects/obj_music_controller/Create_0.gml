persistent = true;

if (instance_number(obj_music_controller) > 1) {
    instance_destroy();
    exit;
}

if (!variable_global_exists("som_mutado")) {
    global.som_mutado = false;
}

if (!variable_global_exists("musica_rodando")) {
    global.musica_rodando = noone;
}

if (!variable_global_exists("musica_atual")) {
    global.musica_atual = "";
}
