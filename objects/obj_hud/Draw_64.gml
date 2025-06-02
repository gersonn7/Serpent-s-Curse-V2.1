var ctrl = instance_find(obj_game_controller, 0);

if (ctrl != noone && !ctrl.gameover) {
    var scale_x = 3; 
    var scale_y = 2.2; 

    var bx = 50;
    var by = 20;

    var bg_w = sprite_get_width(spr_heath_bg) * scale_x;
    var bg_h = sprite_get_height(spr_heath_bg) * scale_y;
    draw_sprite_stretched(spr_heath_bg, 0, bx, by, bg_w, bg_h);

    if (instance_exists(obj_player)) {
        var p = instance_find(obj_player, 0);
        if (p != noone) {
            var percent = p.vida_atual / p.max_vida;

            var full_w = sprite_get_width(spr_heath_fill);
            var full_h = sprite_get_height(spr_heath_fill);

            var part_w = full_w * percent;

            var offset_x = 42;
            var offset_y = 2;

            draw_sprite_part_ext(
                spr_heath_fill,
                0,
                0, 0,
                part_w, full_h,
                bx + offset_x,
                by + offset_y,
                scale_x,
                scale_y,
                c_white,
                1
            );
        }
    }

    var bx_armor = 50;
    var by_armor = 45;

    var armor_bg_w = sprite_get_width(Sprite63) * scale_x;
    var armor_bg_h = sprite_get_height(Sprite63) * scale_y;
    draw_sprite_stretched(Sprite63, 0, bx_armor, by_armor, armor_bg_w, armor_bg_h);

    if (instance_exists(obj_player)) {
        var p = instance_find(obj_player, 0);
        if (p != noone) {
            var percent_armor = p.armor_atual / p.max_armor;

            var full_w_armor = sprite_get_width(spr_armor);
            var full_h_armor = sprite_get_height(spr_armor);

            var part_w_armor = full_w_armor * percent_armor;

            var offset_x_armor = 42;
            var offset_y_armor = 2;

            draw_sprite_part_ext(
                spr_armor,
                0,
                0, 0,
                part_w_armor, full_h_armor,
                bx_armor + offset_x_armor,
                by_armor + offset_y_armor,
                scale_x,
                scale_y,
                c_white,
                1
            );
        }
    }
}


