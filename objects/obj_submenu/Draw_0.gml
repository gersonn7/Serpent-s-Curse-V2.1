draw_set_font(Font_menu);
draw_set_color(c_white);


var txt = "VOLUME";
var txt_w = string_width(txt);
var txt_h = string_height(txt);
var btn_w = btn_volume.x2 - btn_volume.x1;
var btn_h = btn_volume.y2 - btn_volume.y1;
draw_text(btn_volume.x1 + (btn_w - txt_w) / 2, btn_volume.y1 + (btn_h - txt_h) / 2, txt);

txt = "VOLTAR";
txt_w = string_width(txt);
txt_h = string_height(txt);
btn_w = btn_voltar.x2 - btn_voltar.x1;
btn_h = btn_voltar.y2 - btn_voltar.y1;
draw_text(btn_voltar.x1 + (btn_w - txt_w) / 2, btn_voltar.y1 + (btn_h - txt_h) / 2, txt);






