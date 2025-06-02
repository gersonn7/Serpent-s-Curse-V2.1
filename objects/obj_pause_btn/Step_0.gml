if (mouse_check_button_pressed(mb_left)) {
    var tx = device_mouse_x_to_gui(0);
    var ty = device_mouse_y_to_gui(0);

    if (point_in_rectangle(tx, ty,
        btn_x - btn_size / 2 - touch_margin,
        btn_y - btn_size / 2 - touch_margin,
        btn_x + btn_size / 2 + touch_margin,
        btn_y + btn_size / 2 + touch_margin)) {

        if (!global.game_paused) {
            global.game_paused = true;
			tocou = true;

            var pause_overlay = instance_create_layer(0, 0, "GUI", obj_pause_overlay);
            pause_overlay.background_sprite = spr_pause_background;
        }
    }
}