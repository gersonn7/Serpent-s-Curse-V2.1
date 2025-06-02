
//draw_rectangle(50, 600, 50+80, 600+80, false)
//draw_rectangle(180, 600, 180+80, 600+80, false)
//draw_rectangle(980, 480, 980+80, 480+80, false)
//draw_rectangle(1100, 500, 1100+80, 500+80, false)
//draw_rectangle(1040, 580, 1040+80, 580+80, false)
//draw_rectangle(1150, 500, 1150+80, 620+80, false)




if (state == "dead") {
} 
else if (!global.game_paused) {
    draw_sprite_ext(spr_btn_seta_left, 0, 90, 600, 1, 1, 0, -1, 1);
    draw_sprite_ext(spr_btn_seta_right, 0, 180, 600, 1, 1, 0, -1, 1);
    draw_sprite_ext(spr_btn_attack, 0, 1100, 500, 1, 1, 0, -1, 1);
    draw_sprite_ext(spr_btn_pulo, 0, 1040, 580, 1, 1, 0, -1, 1);
    draw_sprite_ext(spr_btn_dash, 0, 1150, 580, 1, 1, 0, -1, 1);

    if (!down) {
        draw_sprite_ext(spr_btn_seta_baixo, 0, 980, 480, 1, 1, 0, -1, 1);
    }
}