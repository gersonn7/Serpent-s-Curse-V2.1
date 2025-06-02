draw_set_color(c_white);
draw_set_font(Font_menu);


var barra_largura = slider_width;
var barra_altura = 16;
var handle_raio = slider_handle_radius;


var music_text = "Volume da Música";
var music_text_w = string_width(music_text);
draw_text(music_x + barra_largura / 2 - music_text_w / 2, music_y - 50, music_text);


draw_rectangle(music_x, music_y - barra_altura / 2, music_x + barra_largura, music_y + barra_altura / 2, false);


var handle_mx = music_x + music_volume * barra_largura;
draw_circle(handle_mx, music_y, handle_raio, false);


var sfx_text = "Volume dos Efeitos";
var sfx_text_w = string_width(sfx_text);
draw_text(sfx_x + barra_largura / 2 - sfx_text_w / 2, sfx_y - 50, sfx_text);


draw_rectangle(sfx_x, sfx_y - barra_altura / 2, sfx_x + barra_largura, sfx_y + barra_altura / 2, false);


var handle_sfx = sfx_x + sfx_volume * barra_largura;
draw_circle(handle_sfx, sfx_y, handle_raio, false);


var voltar_w = 140;
var voltar_h = 50;
var voltar_x = display_get_gui_width() / 2 - voltar_w / 2;
var voltar_y = display_get_gui_height() - 100;

var voltar_text = "Voltar";
var voltar_text_w = string_width(voltar_text);
var voltar_text_h = string_height(voltar_text);
draw_text(voltar_x + (voltar_w - voltar_text_w) / 2, voltar_y + (voltar_h - voltar_text_h) / 2, voltar_text);


if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    if (point_in_rectangle(mx, my, voltar_x, voltar_y, voltar_x + voltar_w, voltar_y + voltar_h)) {
        room_goto(Submenu);
    }
}
