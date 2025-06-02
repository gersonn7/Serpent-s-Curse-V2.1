
var mx = device_mouse_x(0);
var my = device_mouse_y(0);

if (point_in_rectangle(mx, my, btn_volume.x1, btn_volume.y1, btn_volume.x2, btn_volume.y2)) {
    room_goto(Volume);
}

if (point_in_rectangle(mx, my, btn_voltar.x1, btn_voltar.y1, btn_voltar.x2, btn_voltar.y2)) {
    room_goto(Menu);
}

