var offset = sin(current_time * 0.005) * 2;

draw_sprite_ext(
    sprite_index,          // sprite atual
    0,                     // frame
    x,                     // posição x
    y + offset,            // posição y com efeito ondulado
    image_xscale,          // usa a escala X da instância
    image_yscale,          // usa a escala Y da instância
    0,                     // rotação
    c_white,               // cor
    1                      // opacidade
);