// Primeiro, pegar a instância do player (se só tiver uma)
var player_inst = instance_find(obj_player, 0);  // pega a primeira instância do player

if (player_inst != noone) {
    hspd = player_inst.velh;  // pega a velocidade horizontal do player e guarda em hspd
    
    if (place_meeting(x + sign(hspd), y, obj_bloqueio)) {
        if (!place_meeting(x + sign(hspd), y - 1, obj_bloqueio)) {
            y -= 1;
        } else if (!place_meeting(x + sign(hspd), y - 2, obj_bloqueio)) {
            y -= 2;
        }
    } else {
        if (!place_meeting(x + sign(hspd), y + 1, obj_bloqueio)) {
            if (place_meeting(x + sign(hspd), y + 2, obj_bloqueio)) {
                y += 1;
            } else if (place_meeting(x + sign(hspd), y + 3, obj_bloqueio)) {
                y += 2;
            }
        }
    }
}