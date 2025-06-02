if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    if (point_in_rectangle(mx, my, btn_pause_continue.x1, btn_pause_continue.y1, btn_pause_continue.x2, btn_pause_continue.y2)) {
        global.game_paused = false;
        instance_destroy();
    }
    else if (point_in_rectangle(mx, my, btn_pause_restart.x1, btn_pause_restart.y1, btn_pause_restart.x2, btn_pause_restart.y2)) {
        global.game_paused = false;
        instance_destroy();
        room_restart();
    }
    else if (point_in_rectangle(mx, my, btn_pause_menu.x1, btn_pause_menu.y1, btn_pause_menu.x2, btn_pause_menu.y2)) {
        global.game_paused = false;
        instance_destroy();
        room_goto(Menu);
    }
    else if (point_in_rectangle(mx, my, btn_music_area.x1, btn_music_area.y1, btn_music_area.x2, btn_music_area.y2)) {
        global.som_mutado = !global.som_mutado;
        if (global.musica_rodando != noone) {
            audio_sound_gain(global.musica_rodando, global.som_mutado ? 0 : 1, 0.1);
        }
    }
    else if (point_in_rectangle(mx, my, btn_sfx_area.x1, btn_sfx_area.y1, btn_sfx_area.x2, btn_sfx_area.y2)) {
        global.sfx_mutado = !global.sfx_mutado;
    }
	estouNoOverlay=true;
}

