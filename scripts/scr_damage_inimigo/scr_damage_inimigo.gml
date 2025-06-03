function scr_damage_inimigo(_sprite, _image_index) {
    delay = room_speed * 2;
    velh = 0;

    if (sprite_index != _sprite) {
        image_index = 0;
        sprite_index = _sprite;
    }

    if (image_index >= image_number - 1) {
        if (vida_atual > 0) {
            state = "parado";
        } else {
            if (image_index >= _image_index) {
                state = "dead";
            }
        }
    }
}