// Tamanhos da tela 
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

slider_width = gui_w * 0.7; 
slider_height = 20;

music_x = (gui_w - slider_width) / 2;
music_y = gui_h * 0.35;

sfx_x = music_x;
sfx_y = gui_h * 0.55;

slider_handle_radius = 24; 

music_volume = 1;
sfx_volume = 1;

if (variable_global_exists("music_volume")) {
    music_volume = global.music_volume;
}
if (variable_global_exists("sfx_volume")) {
    sfx_volume = global.sfx_volume;
}


dragging_music = false;
dragging_sfx = false;
