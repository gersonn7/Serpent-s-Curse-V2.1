var mx = device_mouse_x(0);
var my = device_mouse_y(0);

if (point_in_rectangle(mx, my, btn_jogar.x1, btn_jogar.y1, btn_jogar.x2, btn_jogar.y2)) {
    room_goto(Room1);
}

if (point_in_rectangle(mx, my, btn_creditos.x1, btn_creditos.y1, btn_creditos.x2, btn_creditos.y2)) {
    room_goto(Creditos);
}

if (point_in_rectangle(mx, my, btn_opcoes.x1, btn_opcoes.y1, btn_opcoes.x2, btn_opcoes.y2)) {
    room_goto(Submenu);
}

if (point_in_rectangle(mx, my, btn_sair.x1, btn_sair.y1, btn_sair.x2, btn_sair.y2)) {
    game_end();
}
