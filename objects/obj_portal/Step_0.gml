if (place_meeting(x, y, obj_player)) {
    if (!instance_exists(obj_transicao)) {
        instance_create_layer(0, 0, "GUI", obj_transicao);
		audio_play_sound(snd_teleport, 1, false)
    }

    with (obj_transicao) {
        estado = "fade_out";
        proxima_room = Room2;
    }

    instance_destroy();
}