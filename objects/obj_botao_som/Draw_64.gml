var scale = 0.3;
var btn_x = 20;
var btn_y = 20;

if (global.som_mutado) {
    draw_sprite_ext(spr_som_off, 0, btn_x, btn_y, scale, scale, 0, c_white, 1);
} else {
    draw_sprite_ext(spr_som_on, 0, btn_x, btn_y, scale, scale, 0, c_white, 1);
}
