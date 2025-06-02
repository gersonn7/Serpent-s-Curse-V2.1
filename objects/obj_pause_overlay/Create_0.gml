var btn_w = 366;
var btn_h = 70;
var btn_spacing = 20;
global.pauseOverlayAtivo = false;

var gui_w = display_get_gui_width();
var frame_center_x = gui_w / 2;


titulo_y = 70;


music_icon_size = 48;
sfx_icon_size = 32;
var icon_spacing = 30;


var espaco_entre_titulo_e_icones = 80;

icon_y = titulo_y + espaco_entre_titulo_e_icones;
sfx_y_offset = (music_icon_size - sfx_icon_size) / 2;

btn_music_x = frame_center_x - (music_icon_size + icon_spacing + sfx_icon_size) / 2;
btn_sfx_x   = btn_music_x + music_icon_size + icon_spacing;

btn_music_area = { x1: btn_music_x, y1: icon_y, x2: btn_music_x + music_icon_size, y2: icon_y + music_icon_size };
btn_sfx_area   = { x1: btn_sfx_x,   y1: icon_y + sfx_y_offset, x2: btn_sfx_x + sfx_icon_size, y2: icon_y + sfx_y_offset + sfx_icon_size };


var btn_start_y = icon_y + music_icon_size + 60;

btn_pause_continue = {
    x1: frame_center_x - btn_w / 2,
    y1: btn_start_y,
    x2: frame_center_x + btn_w / 2,
    y2: btn_start_y + btn_h
};
btn_pause_restart = {
    x1: frame_center_x - btn_w / 2,
    y1: btn_pause_continue.y2 + btn_spacing,
    x2: frame_center_x + btn_w / 2,
    y2: btn_pause_continue.y2 + btn_spacing + btn_h
};
btn_pause_menu = {
    x1: frame_center_x - btn_w / 2,
    y1: btn_pause_restart.y2 + btn_spacing,
    x2: frame_center_x + btn_w / 2,
    y2: btn_pause_restart.y2 + btn_spacing + btn_h
};


if (!variable_global_exists("som_mutado")) global.som_mutado = false;
if (!variable_global_exists("sfx_mutado")) global.sfx_mutado = false;
if (!variable_global_exists("musica_rodando")) global.musica_rodando = noone;

global.game_paused = true;