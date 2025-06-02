/// scr_toca_som_uma_vez(som, condicao)

var som = argument0;
var condicao = argument1;

if (condicao) {
    if (!variable_instance_exists(id, "som_ja_tocou")) {
        som_ja_tocou = false;
    }

    if (!som_ja_tocou) {
        audio_play_sound(som, 1, false);
        som_ja_tocou = true;
    }
} else {
    som_ja_tocou = false;
}