var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Início do clique e arraste nos sliders
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mx, my, music_x, music_y - slider_height, music_x + slider_width, music_y + slider_height)) {
        dragging_music = true;
    }
    if (point_in_rectangle(mx, my, sfx_x, sfx_y - slider_height, sfx_x + slider_width, sfx_y + slider_height)) {
        dragging_sfx = true;
    }
}


if (mouse_check_button_released(mb_left)) {
    dragging_music = false;
    dragging_sfx = false;
}


if (dragging_music) {
    music_volume = clamp((mx - music_x) / slider_width, 0, 1);
    global.music_volume = music_volume;

    if (variable_global_exists("musica_rodando")) {
        audio_sound_gain(global.musica_rodando, music_volume, 0.1);
    }
}

if (dragging_sfx) {
    sfx_volume = clamp((mx - sfx_x) / slider_width, 0, 1);
    global.sfx_volume = sfx_volume;
}
