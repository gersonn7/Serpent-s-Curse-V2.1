var linha_altura = 32;
var centro_x = display_get_gui_width() / 2;

for (var i = 0; i < array_length(creditos); i++) {
    var texto = creditos[i];

    var eh_titulo = string_pos(":", texto) > 0;

    var eh_secao = (
        texto == "Desenvolvimento" ||
        texto == "Arte e Animações" ||
        texto == "Audio" ||
        texto == "Ferramentas"
    );

    if (eh_secao) {
        draw_set_font(Font_titulo);
        draw_set_color(make_color_rgb(173, 255, 47));
    }
    else if (eh_titulo) {
        draw_set_font(Font_titulo);
        draw_set_color(make_color_rgb(173, 255, 47));
    }
    else {
        draw_set_font(Font_menu);
        draw_set_color(c_white);
    }

    var largura = string_width(texto);
    draw_text(centro_x - largura / 2, scroll_y + i * linha_altura, texto);
}


draw_sprite(spr_botao_voltar, 0, btn_x, btn_y);