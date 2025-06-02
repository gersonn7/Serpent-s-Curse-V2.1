var scale = 0.3;
var btn_x = 20;
var btn_y = 20;

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (point_in_rectangle(mx, my, btn_x, btn_y, btn_x + sprite_get_width(spr_som_on) * scale, btn_y + sprite_get_height(spr_som_on) * scale)) {
    global.som_mutado = !global.som_mutado;

    if (global.som_mutado) {
        audio_sound_gain(global.musica_rodando, 0, 0.1); 
    } else {
        audio_sound_gain(global.musica_rodando, 1, 0.1); 
    }
}
