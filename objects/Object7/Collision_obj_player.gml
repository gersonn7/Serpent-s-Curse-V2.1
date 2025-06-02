if (!collected) {
    collected = true;
    obj_player.coins += 1;

		audio_play_sound(snd_coin, 1, false);
        obj_player.armor_atual += 0.125;

    instance_destroy();
}
