var logo_w = sprite_get_width(spr_menu_logo);
var logo_h = sprite_get_height(spr_menu_logo);

var escala = 0.87;

var x_logo = room_width / 2 - (logo_w * escala) / 2;
var y_logo = 80;

draw_sprite_ext(spr_menu_logo, 0, x_logo, y_logo, escala, escala, 0, c_white, 1);


draw_set_font(Font_menu);
draw_set_color(c_white);

var txt = "JOGAR";
var txt_w = string_width(txt);
var txt_h = string_height(txt);
var btn_w = btn_jogar.x2 - btn_jogar.x1;
var btn_h = btn_jogar.y2 - btn_jogar.y1;
draw_text(btn_jogar.x1 + (btn_w - txt_w) / 2, btn_jogar.y1 + (btn_h - txt_h) / 2, txt);

txt = "CRÉDITOS";
txt_w = string_width(txt);
txt_h = string_height(txt);
btn_w = btn_creditos.x2 - btn_creditos.x1;
btn_h = btn_creditos.y2 - btn_creditos.y1;
draw_text(btn_creditos.x1 + (btn_w - txt_w) / 2, btn_creditos.y1 + (btn_h - txt_h) / 2, txt);

txt = "OPÇÕES";
txt_w = string_width(txt);
txt_h = string_height(txt);
btn_w = btn_opcoes.x2 - btn_opcoes.x1;
btn_h = btn_opcoes.y2 - btn_opcoes.y1;
draw_text(btn_opcoes.x1 + (btn_w - txt_w) / 2, btn_opcoes.y1 + (btn_h - txt_h) / 2, txt);


txt = "SAIR";
txt_w = string_width(txt);
txt_h = string_height(txt);
btn_w = btn_sair.x2 - btn_sair.x1;
btn_h = btn_sair.y2 - btn_sair.y1;
draw_text(btn_sair.x1 + (btn_w - txt_w) / 2, btn_sair.y1 + (btn_h - txt_h) / 2, txt);
