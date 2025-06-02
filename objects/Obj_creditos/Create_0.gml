scroll_y = room_height; // começa fora da tela
velocidade_scroll = 1;

touch_last_y = -1; // controle do arrasto
touch_scroll_vel = 0; // velocidade do toque

btn_x = 50;
btn_y = 50;

// Área de toque do botão voltar
btn_voltar = {
    x1: btn_x,
    y1: btn_y,
    x2: btn_x + sprite_get_width(spr_botao_voltar),
    y2: btn_y + sprite_get_height(spr_botao_voltar)
};

creditos = [
    "Desenvolvimento:",
    "",
    "Gerson Fernandes",
    "Victor Mannoel",
    "",
    "",
    "Game Design:",
    "",
    "Gerson Fernandes",
    "Victor Mannoel",
    "",
    "",
    "Level Design:",
    "",
    "Victor Mannoel",
    "Gerson Fernandes",
    "",
    "",
    "Arte e Animações",
    "",
    "Gerson Fernandes",
    "",
    "", 
    "Interface (UI/UX):",
    "",
    "Victor Mannoel",
    "",
    "",
    "Personagem Principal:",
    "",
    "rvros - Slime Pixel Art",
    "",
    "",
    "Inimigos:",
    "",
    "rvros - Animated Pixel Hero",
    "Eddie's Workshop - Sprout",
    "Eddie's Workshop - Soul",
    "",
    "",
    "Trilha Sonora (Música):",
    "",
    "Tallbeard Studios - Music Loop Bundle",
    "",
    "",
    "Efeitos Sonoros (SFX):",
    "",
    "Victor Mannoel",
    "",
    "",
    "Ferramentas:",
    "",
    "Game Maker",
    "Illustrator",
    "Photoshop",
    "Discord",
    "GitHub",
    "",
    "",
    "-- Feito com GameMaker Studio --"
]
