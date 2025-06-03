// Inicializa a animação da moeda
coin_sprites = [
    spr_coin_frente,
    spr_coin_diagonal_esquerdo,
    spr_coin_lado,
    spr_coin_diagonal_direito,
];

frame = 0;
frame_timer = 0;
frame_speed = .09;
sprite_index = coin_sprites[frame];
collected = false;
